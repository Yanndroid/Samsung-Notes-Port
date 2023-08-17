.class public final Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;",
        "Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;",
        "contentProviderCaller",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;)V",
        "mExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "send",
        "",
        "widgetComponentName",
        "Landroid/content/ComponentName;",
        "feedbackType",
        "Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;",
        "sendFeedback",
        "sendRawData",
        "stackId",
        "",
        "sendRawFeedback",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FeedbackRequest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile sInstance:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->Companion:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;-><init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->send$lambda-0(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->sInstance:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->sInstance:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->sendRawData$lambda-1(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V

    return-void
.end method

.method private static final send$lambda-0(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$widgetComponentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$feedbackType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->sendFeedback(Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V

    return-void
.end method

.method private final sendFeedback(Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "widget_component_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->getId()I

    move-result p1

    const-string p2, "feedback_type"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    sget-object p2, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackContract;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackContract;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object p2

    const-string/jumbo v1, "submit_feedback_widget"

    invoke-interface {p1, p2, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static final sendRawData$lambda-1(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$widgetComponentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->sendRawFeedback(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private final sendRawFeedback(ILandroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stack_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "widget_component_name"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string/jumbo p2, "submit_raw_feedback_widget"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public send(Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "widgetComponentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lh3/b;

    invoke-direct {v1, p0, p1, p2}, Lh3/b;-><init>(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendRawData(ILandroid/content/ComponentName;)V
    .locals 2
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "widgetComponentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lh3/a;

    invoke-direct {v1, p0, p1, p2}, Lh3/a;-><init>(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
