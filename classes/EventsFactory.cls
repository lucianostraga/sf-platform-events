public class EventsFactory {
    
    public static void publishEvents(List<FeedItem> feedItems){
        List<ChatterActivity__e> events = new  List<ChatterActivity__e>();
        
        for(FeedItem f : feedItems)
            events.add(buildEvent(f));
        
        EventBus.publish(events);
    }
    
    private static ChatterActivity__e buildEvent(FeedItem f){
        ChatterActivity__e ev = new ChatterActivity__e();
        ev.Body__c  = f.Body;
        ev.Type__c = f.Type;
        ev.UserId__c = f.ParentId;
        return ev;
    }

}