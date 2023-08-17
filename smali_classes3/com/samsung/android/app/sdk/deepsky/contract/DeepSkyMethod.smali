.class public final Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;",
        "",
        "()V",
        "APP_PACKAGE_NAME_PROPERTY",
        "",
        "APP_PREFERENCE_KEY_PROPERTY",
        "APP_RECOMMENDATION_AVAILABILITY_PROPERTY",
        "APP_SETTING_VALUE_PROPERTY",
        "COMMAND_SEARCH",
        "GET_APP_RECOMMENDATION_AVAILABILITY",
        "GET_APP_SETTING_VALUE",
        "GET_CAPABILITIES",
        "GET_SMART_SUGGESTIONS_ENABLED",
        "GET_SUBSCRIPTION_ID_LIST",
        "IS_SUBSCRIBED",
        "KEY_VERSION",
        "REQUEST_SEARCH",
        "REQUEST_SUGGESTION",
        "RESET_APP_RECOMMENDATION_AVAILABILITY",
        "RESPONSE_SEARCH",
        "SET_APP_RECOMMENDATION_AVAILABILITY",
        "SET_SMART_SUGGESTIONS_ENABLED",
        "SMART_SUGGESTIONS_ENABLED_PROPERTY",
        "SUBSCRIBE_SUGGESTION",
        "UNSUBSCRIBE_SUGGESTION",
        "URI",
        "VERSION_CODE",
        "",
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
.field public static final APP_PACKAGE_NAME_PROPERTY:Ljava/lang/String; = "app_package_name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final APP_PREFERENCE_KEY_PROPERTY:Ljava/lang/String; = "app_preference_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final APP_RECOMMENDATION_AVAILABILITY_PROPERTY:Ljava/lang/String; = "app_recommendation_availability_result"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final APP_SETTING_VALUE_PROPERTY:Ljava/lang/String; = "app_setting_value_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMAND_SEARCH:Ljava/lang/String; = "command_search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_APP_RECOMMENDATION_AVAILABILITY:Ljava/lang/String; = "get_app_recommendation_availability"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_APP_SETTING_VALUE:Ljava/lang/String; = "get_app_setting_value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_CAPABILITIES:Ljava/lang/String; = "get_capabilities"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_SMART_SUGGESTIONS_ENABLED:Ljava/lang/String; = "get_smart_suggestions_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_SUBSCRIPTION_ID_LIST:Ljava/lang/String; = "get_subscription_id_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_SUBSCRIBED:Ljava/lang/String; = "is_subscribed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_SEARCH:Ljava/lang/String; = "request_search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_SUGGESTION:Ljava/lang/String; = "request_suggestion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESET_APP_RECOMMENDATION_AVAILABILITY:Ljava/lang/String; = "reset_app_recommendation_availability"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESPONSE_SEARCH:Ljava/lang/String; = "response_search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SET_APP_RECOMMENDATION_AVAILABILITY:Ljava/lang/String; = "set_app_recommendation_availability"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SET_SMART_SUGGESTIONS_ENABLED:Ljava/lang/String; = "set_smart_suggestions_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SMART_SUGGESTIONS_ENABLED_PROPERTY:Ljava/lang/String; = "smart_suggestions_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUBSCRIBE_SUGGESTION:Ljava/lang/String; = "subscribe_suggestion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNSUBSCRIBE_SUGGESTION:Ljava/lang/String; = "unsubscribe_suggestion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URI:Ljava/lang/String; = "content://com.samsung.android.app.deepsky.DeepSkyQuery.provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERSION_CODE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/DeepSkyMethod;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
