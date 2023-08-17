.class public Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;
    }
.end annotation


# instance fields
.field private mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->WAITING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mType:I

    return-void
.end method


# virtual methods
.method public getState()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(ILcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    return-void
.end method

.method public updateStatus(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->mState:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    return-void
.end method
