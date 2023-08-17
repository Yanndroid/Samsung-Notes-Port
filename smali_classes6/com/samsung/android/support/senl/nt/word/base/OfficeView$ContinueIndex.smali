.class public Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContinueIndex"
.end annotation


# instance fields
.field public endIndex:I

.field public height:F

.field public startIndex:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->this$0:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->startIndex:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->endIndex:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->height:F

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->endIndex:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->height:F

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->startIndex:I

    return v0
.end method
