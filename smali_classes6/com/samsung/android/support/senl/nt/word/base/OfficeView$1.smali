.class Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getExtractTextResult(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

.field public final synthetic val$finishRecognize:[Z

.field public final synthetic val$notePath:Ljava/lang/String;

.field public final synthetic val$results:[Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;[Ljava/util/List;Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$results:[Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$notePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$finishRecognize:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$results:[Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$notePath:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;->recognize(Landroid/content/Context;Ljava/lang/String;Landroid/os/CancellationSignal;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognize error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;->val$finishRecognize:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method
