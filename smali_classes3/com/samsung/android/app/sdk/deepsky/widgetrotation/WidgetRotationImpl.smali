.class public final Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J(\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fH\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;",
        "contentProviderCaller",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "systemDataSource",
        "Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;",
        "(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V",
        "disableWidgetFocus",
        "",
        "stackId",
        "",
        "enableWidgetFocus",
        "widgetComponentNameList",
        "Ljava/util/ArrayList;",
        "Landroid/content/ComponentName;",
        "Lkotlin/collections/ArrayList;",
        "getEnabledIdList",
        "",
        "isEnabled",
        "isSubscribed",
        "subscribeWidgetFocus",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "unsubscribeWidgetFocus",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WidgetRotationImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contentProviderCaller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    return-void
.end method


# virtual methods
.method public disableWidgetFocus(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "disableWidgetFocus "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string v1, "disableWidgetFocus"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "result_widget_focus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public enableWidgetFocus(ILjava/util/ArrayList;)Z
    .locals 2
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "widgetComponentNameList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "enableWidgetFocus "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "widgetComponentNameListKey"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string p2, "enableWidgetFocus"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "result_widget_focus"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getEnabledIdList()Ljava/util/List;
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

    const-string v0, "WidgetRotationImpl"

    const-string v1, "getEnabledIdList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v1}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "getEnabledWidgetFocusIdList"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "result_widget_focus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "isEnabled "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string v1, "isEnabled"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "result_widget_focus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isSubscribed(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "isSubscribed "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string v1, "isSubscribedWidgetFocus"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "result_widget_focus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public subscribeWidgetFocus(ILandroid/app/PendingIntent;)Z
    .locals 2
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "subscribeWidgetFocus "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pendingIntentKey"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string/jumbo p2, "subscribeWidgetFocus"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "result_widget_focus"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public unsubscribeWidgetFocus(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "unsubscribeWidgetFocus "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetRotationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smartWidgetIdKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string/jumbo v1, "unsubscribeWidgetFocus"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "result_widget_focus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
