.class public Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public pageId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->name:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->pageId:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->pageId:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->name:Ljava/lang/String;

    return-void
.end method

.method public setPageId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->pageId:I

    return-void
.end method
