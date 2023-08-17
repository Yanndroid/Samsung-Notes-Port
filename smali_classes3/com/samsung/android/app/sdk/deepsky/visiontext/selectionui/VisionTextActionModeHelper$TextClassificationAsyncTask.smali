.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextClassificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/textclassifier/TextClassification;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultTimeOutCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private final mTimeOutDuration:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultSupplier:Ljava/util/function/Supplier;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultCallback:Ljava/util/function/Consumer;

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Ljava/util/function/Consumer;

    iput-object p6, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultTimeOutCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->onTimeOut()V

    return-void
.end method

.method private onTimeOut()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout in TextClassificationAsyncTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultTimeOutCallback:Ljava/util/function/Consumer;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/view/textclassifier/TextClassification;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/f;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/f;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextClassificationAsyncTask failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/view/textclassifier/TextClassification;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/view/textclassifier/TextClassification;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->mResultCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
