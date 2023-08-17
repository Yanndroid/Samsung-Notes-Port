.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorCounter"
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x3


# instance fields
.field public mCheckPoint:J

.field public mCount:I

.field public mErrorMsg:Ljava/lang/String;

.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCheckPoint:J

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isMaxCounted(JLjava/lang/String;)Z
    .locals 4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCheckPoint:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCount:I

    const/4 p3, 0x3

    if-lt p1, p3, :cond_1

    move v1, p2

    :cond_1
    return v1

    :cond_2
    iput v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCount:I

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mCheckPoint:J

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->mErrorMsg:Ljava/lang/String;

    :cond_3
    :goto_0
    return v1
.end method
