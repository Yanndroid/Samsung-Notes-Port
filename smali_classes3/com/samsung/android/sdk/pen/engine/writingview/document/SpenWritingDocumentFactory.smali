.class public Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocumentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDocument(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;-><init>(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    return-object v0
.end method

.method public static createDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingWNoteDocument;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingWNoteDocument;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-object v0
.end method
