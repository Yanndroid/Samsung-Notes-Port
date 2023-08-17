.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateRunnable"
.end annotation


# instance fields
.field public mCurrentIndex:I

.field public mCurrentLine:I

.field public mNoteSpan:I

.field public mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentLine()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mCurrentLine:I

    return v0
.end method

.method public getNoteSpan()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mNoteSpan:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mTotalCount:I

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setCurrentIndex(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mCurrentIndex:I

    return-object p0
.end method

.method public setCurrentLine(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mCurrentLine:I

    return-object p0
.end method

.method public setNoteSpan(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mNoteSpan:I

    return-object p0
.end method

.method public setTotalCount(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->mTotalCount:I

    return-object p0
.end method
