.class public final Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;",
        "",
        "()V",
        "DISABLE_WIDGET_FOCUS",
        "",
        "ENABLE_WIDGET_FOCUS",
        "GET_ENABLED_WIDGET_FOCUS_ID_LIST",
        "IS_ENABLED",
        "IS_SUBSCRIBED_WIDGET_FOCUS",
        "KEY_PENDING_INTENT",
        "KEY_STACK_ID",
        "KEY_WIDGET_COMPONENT_NAME_LIST",
        "RESULT_WIDGET_FOCUS",
        "SUBSCRIBE_WIDGET_FOCUS",
        "UNSUBSCRIBE_WIDGET_FOCUS",
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
.field public static final DISABLE_WIDGET_FOCUS:Ljava/lang/String; = "disableWidgetFocus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ENABLE_WIDGET_FOCUS:Ljava/lang/String; = "enableWidgetFocus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GET_ENABLED_WIDGET_FOCUS_ID_LIST:Ljava/lang/String; = "getEnabledWidgetFocusIdList"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_ENABLED:Ljava/lang/String; = "isEnabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_SUBSCRIBED_WIDGET_FOCUS:Ljava/lang/String; = "isSubscribedWidgetFocus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntentKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_STACK_ID:Ljava/lang/String; = "smartWidgetIdKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_WIDGET_COMPONENT_NAME_LIST:Ljava/lang/String; = "widgetComponentNameListKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_WIDGET_FOCUS:Ljava/lang/String; = "result_widget_focus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUBSCRIBE_WIDGET_FOCUS:Ljava/lang/String; = "subscribeWidgetFocus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNSUBSCRIBE_WIDGET_FOCUS:Ljava/lang/String; = "unsubscribeWidgetFocus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/widget/WidgetContract;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
