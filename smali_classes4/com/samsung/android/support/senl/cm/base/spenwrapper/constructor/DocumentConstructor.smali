.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DocumentConstructor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLMemoConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeNMemoConverter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeSNBConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeSPDConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeScrapBookConverter(Landroid/content/Context;I)Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v6
.end method

.method public static makeSpenPaintingDoc(Landroid/content/Context;IILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-object v0
.end method

.method public static makeSpenSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeSpenSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v6
.end method

.method public static makeSpenWNote(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->TAG:Ljava/lang/String;

    const-string v1, "makeSpenWNote#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->printNativeHeapMemory(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V

    return-object v0
.end method

.method public static makeSpenWNote(Landroid/content/Context;Ljava/lang/String;IIZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->TAG:Ljava/lang/String;

    const-string v1, "makeSpenWNote#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->printNativeHeapMemory(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    return-object v0
.end method
