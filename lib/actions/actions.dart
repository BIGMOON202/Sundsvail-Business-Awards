import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/modal_kopplad_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future navigateDestination(
  BuildContext context, {
  required String? destinationType,
  required String? destinationValue,
}) async {
  if ((String destinationType) {
    return destinationType == 'page';
  }(destinationType!)) {
    if ((String destinationValue) {
      return destinationValue == 'AwardsPage';
    }(destinationValue!)) {
      context.pushNamed('Awards');
    } else if ((String destinationValue) {
      return destinationValue == 'GuestsPage';
    }(destinationValue)) {
      context.pushNamed('Guests');
    } else if ((String destinationValue) {
      return destinationValue == 'ProgramPage';
    }(destinationValue)) {
      context.pushNamed('Program');
    } else if ((String destinationValue) {
      return destinationValue == 'TablePage';
    }(destinationValue)) {
      context.pushNamed('Table');
    } else if ((String destinationValue) {
      return destinationValue == 'TicketPage';
    }(destinationValue)) {
      context.pushNamed('Ticket');
    } else {
      context.pushNamed('News');
    }
  } else if ((String destinationType) {
    return destinationType == 'article';
  }(destinationType)) {
    // Webview med appartikel

    context.pushNamed(
      'WebviewCustom',
      queryParameters: {
        'title': serializeParam(
          'INFO',
          ParamType.String,
        ),
        'url': serializeParam(
          'https://www.businessawards.se/appsidor/artiklar$destinationValue',
          ParamType.String,
        ),
      }.withoutNulls,
    );
  } else if ((String destinationType) {
    return destinationType == 'url_webview';
  }(destinationType)) {
    // URL i webview

    context.pushNamed(
      'WebviewCustom',
      queryParameters: {
        'url': serializeParam(
          destinationValue,
          ParamType.String,
        ),
        'title': serializeParam(
          'INFO',
          ParamType.String,
        ),
      }.withoutNulls,
    );
  } else if ((String destinationType) {
    return destinationType == 'url_webview_token';
  }(destinationType)) {
    // Webview med ticket hash

    context.pushNamed(
      'WebviewCustom',
      queryParameters: {
        'title': serializeParam(
          'INFO',
          ParamType.String,
        ),
        'url': serializeParam(
          '$destinationValue${FFAppState().ticketHash}',
          ParamType.String,
        ),
      }.withoutNulls,
    );
  } else if ((String destinationType) {
    return destinationType == 'url_external';
  }(destinationType)) {
    // URL i extern modal
    await launchURL(destinationValue!);
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Fel'),
          content: const Text('Hittade inte desinationstypen'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future connectTicket(BuildContext context) async {
  ApiCallResponse? apiResultLogin;

  apiResultLogin = await LoginCall.call(
    ticketHash: FFAppState().claimedTicketHash,
    fCMToken: FFAppState().FCMToken,
  );

  if (getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.login_status''',
      ) ==
      1) {
    FFAppState().ticketHash = FFAppState().claimedTicketHash;
    FFAppState().activeTicket = TicketStruct(
      firstname: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.firstname''',
      ).toString().toString(),
      lastname: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.lastname''',
      ).toString().toString(),
      email: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.email''',
      ).toString().toString(),
      year: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.year''',
      ).toString().toString(),
      org: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.org''',
      ).toString().toString(),
      place: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.place''',
      ).toString().toString(),
      time: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.time''',
      ).toString().toString(),
      invitedBy: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.invited_by''',
      ).toString().toString(),
      ticketHash: getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.ticket_hash''',
      ).toString().toString(),
    );
    FFAppState().update(() {});
    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: const AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: const ModalKoppladWidget(),
        );
      },
    );
  } else if (getJsonField(
        (apiResultLogin.jsonBody ?? ''),
        r'''$.login_status''',
      ) ==
      2) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Biljett utgången'),
          content: Text(getJsonField(
            (apiResultLogin?.jsonBody ?? ''),
            r'''$.message''',
          ).toString().toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Koppling misslyckades'),
          content: Text(getJsonField(
            (apiResultLogin?.jsonBody ?? ''),
            r'''$.message''',
          ).toString().toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
