trigger FeedItemTrigger on FeedItem (after insert) {
    EventsFactory.publishEvents(trigger.new);
}