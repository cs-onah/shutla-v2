import 'package:event_bus/event_bus.dart';
import 'package:shutla_v2/core/utils/logger.dart';

/// A default instance of [EventBus] shared by the app,
/// this is initialised once and serve as a singleton
/// for broadcasting and listening to events.
EventBus eventBus = EventBus();

///Global logger variable
///usage log("Hello world)
Logger logInfo = Logger.instance;

/// Credit duration on Receivables
const creditDurationInDays = 60;
const creditDuration = Duration(days: creditDurationInDays);

/// Help page
const helpPageUrl = "https://help.fieldmaxpro.com/documentation/introduction";
