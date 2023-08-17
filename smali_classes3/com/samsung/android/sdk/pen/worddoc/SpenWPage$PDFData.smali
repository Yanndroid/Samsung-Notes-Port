.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDFData"
.end annotation


# instance fields
.field private boundFileId:I

.field private filePath:Ljava/lang/String;

.field public index:I

.field public rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundFileId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->boundFileId:I

    return v0
.end method

.method public getBoundFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->filePath:Ljava/lang/String;

    return-object v0
.end method
