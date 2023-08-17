.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$Companion;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J,\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u000e0\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J(\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J:\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u000e0\u00172\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0001H\u0016J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getCapabilities",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;",
        "getMaybeEventItem",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
        "getSubscriptionIdList",
        "",
        "getSuggestionItem",
        "capability",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;",
        "isSubscribed",
        "",
        "id",
        "requestSuggestion",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponse;",
        "extras",
        "Landroid/os/Bundle;",
        "mapper",
        "Ljava/util/function/Function;",
        "subscribeSuggestion",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "test",
        "unsubscribeSuggestion",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_DESCRIPTION:Ljava/lang/String; = "There is one may event"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_ICON_URI:Ljava/lang/String; = "android.resource://com.samsung.android.smartsuggestions/drawable/calendar"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_ID:Ljava/lang/String; = "_:node1fb1s26kux6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_IS_VALID:Z = true

.field private static final MAYBE_EVENT_KNOWLEDGE_ITEM_DESCRIPTION:Ljava/lang/String; = "09:30 PM - 11:30 PM"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_ITEM_TITLE:Ljava/lang/String; = "Typhoon with Radiation City"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_ITEM_URL:Ljava/lang/String; = "gi://applink/action/calendar/view?startDate=1627351200000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_STRUCTURED_DATA:Ljava/lang/String; = "{\n                  \"@context\": \"https://schema.org\",\n                  \"@type\": \"Event\",\n                  \"location\": {\n                    \"@type\": \"Place\",\n                    \"address\": {\n                      \"@type\": \"PostalAddress\",\n                      \"addressLocality\": \"Denver\",\n                      \"addressRegion\": \"CO\",\n                      \"postalCode\": \"80209\",\n                      \"streetAddress\": \"7 S. Broadway\"\n                    },\n                    \"name\": \"The Hi-Dive\"\n                  },\n                  \"name\": \"Typhoon with Radiation City\",\n                  \"startDate\": \"2013-09-14T21:30\",\n                  \"endDate\": \"2013-09-14T23:30\",\n                  \"attendee\": {\n                    \"@type\": \"Person\",\n                    \"name\": \"Darren R Story\"\n                  }\n                }"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAYBE_EVENT_KNOWLEDGE_TITLE:Ljava/lang/String; = "MAYBE EVENT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->context:Landroid/content/Context;

    return-void
.end method

.method private final getMaybeEventItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 21

    const-string v0, "android.resource://com.samsung.android.smartsuggestions/drawable/calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lorg/json/JSONObject;

    const-string/jumbo v0, "{\n                  \"@context\": \"https://schema.org\",\n                  \"@type\": \"Event\",\n                  \"location\": {\n                    \"@type\": \"Place\",\n                    \"address\": {\n                      \"@type\": \"PostalAddress\",\n                      \"addressLocality\": \"Denver\",\n                      \"addressRegion\": \"CO\",\n                      \"postalCode\": \"80209\",\n                      \"streetAddress\": \"7 S. Broadway\"\n                    },\n                    \"name\": \"The Hi-Dive\"\n                  },\n                  \"name\": \"Typhoon with Radiation City\",\n                  \"startDate\": \"2013-09-14T21:30\",\n                  \"endDate\": \"2013-09-14T23:30\",\n                  \"attendee\": {\n                    \"@type\": \"Person\",\n                    \"name\": \"Darren R Story\"\n                  }\n                }"

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    const/4 v9, 0x0

    const-string v10, "Typhoon with Radiation City"

    const-string v11, "09:30 PM - 11:30 PM"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "gi://applink/action/calendar/view?startDate=1627351200000"

    const-wide/16 v17, 0x0

    const/16 v19, 0x139

    const/16 v20, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;Lorg/json/JSONObject;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    const-string v2, "_:node1fb1s26kux6"

    const-string v3, "MAYBE EVENT"

    const-string v4, "There is one may event"

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/16 v15, 0x750

    const/16 v16, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;DZJLandroid/os/Bundle;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->getMaybeEventItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCapabilities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->MAYBE_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSubscriptionIdList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubscribed(I)Z
    .locals 2

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestSuggestion(Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;Landroid/os/Bundle;)Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponse;
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->getSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponseImpl;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponseImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public requestSuggestion(Ljava/util/function/Function;Landroid/os/Bundle;)Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponse;
    .locals 1
    .param p1    # Ljava/util/function/Function;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;",
            ">;",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponse;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->getCapabilities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mapper.apply(getCapabilities())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->getSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponseImpl;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionResponseImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public subscribeSuggestion(ILcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 0
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "capability"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pendingIntent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribeSuggestion(ILjava/util/function/Function;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 0
    .param p2    # Ljava/util/function/Function;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;",
            ">;",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    const-string p1, "mapper"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pendingIntent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public test()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public unsubscribeSuggestion(ILandroid/app/PendingIntent;)Z
    .locals 1
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "pendingIntent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Not yet implemented"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
