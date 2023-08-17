.class public final Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;
.implements Lcom/samsung/android/app/sdk/deepsky/common/AccessControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0011B\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;",
        "Lcom/samsung/android/app/sdk/deepsky/common/AccessControl;",
        "contentProviderCaller",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "systemDataSource",
        "Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;",
        "(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V",
        "mExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "checkIfAccessAllowed",
        "",
        "contribute",
        "",
        "widgetContribution",
        "Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;",
        "isActive",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SmartWidgetImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;
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

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl$Companion;

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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newSingleThreadExecutor()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->contribute$lambda-1(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V

    return-void
.end method

.method private static final contribute$lambda-1(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$widgetContribution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "key_component_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;->getScore()I

    move-result v1

    const-string v2, "key_score"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;->getDuration()J

    move-result-wide v1

    const-string v3, "key_duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;->getStartTime()J

    move-result-wide v1

    const-string v3, "key_start_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;->getWillProvideReason()Z

    move-result p1

    const-string v1, "key_will_provide_reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "DonationContract.CONTENT_URI"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "donate_relevant_widget"

    invoke-interface {p0, p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public checkIfAccessAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contribute(Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "widgetContribution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SmartWidgetImpl"

    const-string v1, "contribute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Li3/a;

    invoke-direct {v1, p0, p1}, Li3/a;-><init>(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isActive()Z
    .locals 3

    const-string v0, "SmartWidgetImpl"

    const-string v1, "isActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->systemDataSource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string v2, "is_active"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "result_smart_widget"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method
