.class public final Lorg/apache/poi/java/awt/JobAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;,
        Lorg/apache/poi/java/awt/JobAttributes$DestinationType;,
        Lorg/apache/poi/java/awt/JobAttributes$DialogType;,
        Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;,
        Lorg/apache/poi/java/awt/JobAttributes$SidesType;
    }
.end annotation


# instance fields
.field private copies:I

.field private defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

.field private destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

.field private dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

.field private fileName:Ljava/lang/String;

.field private fromPage:I

.field private maxPage:I

.field private minPage:I

.field private multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

.field private pageRanges:[[I

.field private prFirst:I

.field private prLast:I

.field private printer:Ljava/lang/String;

.field private sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

.field private toPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->setCopiesToDefault()V

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->ALL:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setDefaultSelection(Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;)V

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->PRINTER:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setDestination(Lorg/apache/poi/java/awt/JobAttributes$DestinationType;)V

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->NATIVE:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setDialog(Lorg/apache/poi/java/awt/JobAttributes$DialogType;)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setMaxPage(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setMinPage(I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->setMultipleDocumentHandlingToDefault()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->setSidesToDefault()V

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;Lorg/apache/poi/java/awt/JobAttributes$DestinationType;Lorg/apache/poi/java/awt/JobAttributes$DialogType;Ljava/lang/String;IILorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;[[ILjava/lang/String;Lorg/apache/poi/java/awt/JobAttributes$SidesType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/JobAttributes;->setCopies(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/JobAttributes;->setDefaultSelection(Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/JobAttributes;->setDestination(Lorg/apache/poi/java/awt/JobAttributes$DestinationType;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/java/awt/JobAttributes;->setDialog(Lorg/apache/poi/java/awt/JobAttributes$DialogType;)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/java/awt/JobAttributes;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lorg/apache/poi/java/awt/JobAttributes;->setMaxPage(I)V

    invoke-virtual {p0, p7}, Lorg/apache/poi/java/awt/JobAttributes;->setMinPage(I)V

    invoke-virtual {p0, p8}, Lorg/apache/poi/java/awt/JobAttributes;->setMultipleDocumentHandling(Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;)V

    invoke-virtual {p0, p9}, Lorg/apache/poi/java/awt/JobAttributes;->setPageRanges([[I)V

    invoke-virtual {p0, p10}, Lorg/apache/poi/java/awt/JobAttributes;->setPrinter(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, Lorg/apache/poi/java/awt/JobAttributes;->setSides(Lorg/apache/poi/java/awt/JobAttributes$SidesType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/JobAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/JobAttributes;->set(Lorg/apache/poi/java/awt/JobAttributes;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lorg/apache/poi/java/awt/JobAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/JobAttributes;

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v2, p1, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    if-eqz v0, :cond_7

    return v1

    :cond_3
    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    if-eqz v3, :cond_a

    array-length v0, v0

    array-length v3, v3

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    :cond_4
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    array-length v4, v3

    if-ge v0, v4, :cond_7

    aget-object v4, v3, v0

    aget v4, v4, v1

    iget-object v5, p1, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    aget-object v6, v5, v0

    aget v6, v6, v1

    if-ne v4, v6, :cond_6

    aget-object v3, v3, v0

    aget v3, v3, v2

    aget-object v4, v5, v0

    aget v4, v4, v2

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    if-eqz v0, :cond_9

    return v1

    :cond_8
    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    iget v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    iget-object v3, p1, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    iget p1, p1, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    if-ne v0, p1, :cond_a

    move v1, v2

    :cond_a
    :goto_2
    return v1
.end method

.method public getCopies()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    return v0
.end method

.method public getDefaultSelection()Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    return-object v0
.end method

.method public getDestination()Lorg/apache/poi/java/awt/JobAttributes$DestinationType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    return-object v0
.end method

.method public getDialog()Lorg/apache/poi/java/awt/JobAttributes$DialogType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPage()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMinPage()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMinPage()I

    move-result v0

    return v0
.end method

.method public getMaxPage()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    return v0
.end method

.method public getMinPage()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    return v0
.end method

.method public getMultipleDocumentHandling()Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    return-object v0
.end method

.method public getPageRanges()[[I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    new-array v4, v1, [I

    aput v1, v4, v3

    aput v0, v4, v2

    const-class v0, I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v0, v1

    aget-object v6, v4, v1

    aget v6, v6, v2

    aput v6, v5, v2

    aget-object v5, v0, v1

    aget-object v4, v4, v1

    aget v4, v4, v3

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMinPage()I

    move-result v0

    new-array v4, v3, [[I

    new-array v1, v1, [I

    aput v0, v1, v2

    aput v0, v1, v3

    aput-object v1, v4, v2

    return-object v4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getFromPage()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getToPage()I

    move-result v4

    new-array v5, v3, [[I

    new-array v1, v1, [I

    aput v0, v1, v2

    aput v4, v1, v3

    aput-object v1, v5, v2

    return-object v5
.end method

.method public getPrinter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    return-object v0
.end method

.method public getSides()Lorg/apache/poi/java/awt/JobAttributes$SidesType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    return-object v0
.end method

.method public getToPage()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMinPage()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x15

    iget-object v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v4, v2

    aget v5, v5, v1

    aget-object v4, v4, v2

    const/4 v6, 0x1

    aget v4, v4, v6

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v1, v3, 0xb

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(Lorg/apache/poi/java/awt/JobAttributes;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    iget v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    iput v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    iget p1, p1, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    return-void
.end method

.method public setCopies(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->copies:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute copies"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCopiesToDefault()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setCopies(I)V

    return-void
.end method

.method public setDefaultSelection(Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->defaultSelection:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute defaultSelection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestination(Lorg/apache/poi/java/awt/JobAttributes$DestinationType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->destination:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute destination"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDialog(Lorg/apache/poi/java/awt/JobAttributes$DialogType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->dialog:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFromPage(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    if-eqz v0, :cond_0

    if-gt p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute fromPage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxPage(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute maxPage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinPage(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute minPage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMultipleDocumentHandling(Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->multipleDocumentHandling:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute multipleDocumentHandling"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMultipleDocumentHandlingToDefault()V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;->SEPARATE_DOCUMENTS_UNCOLLATED_COPIES:Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setMultipleDocumentHandling(Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;)V

    return-void
.end method

.method public setPageRanges([[I)V
    .locals 8

    const-string v0, "Invalid value for attribute pageRanges"

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v5, :cond_2

    aget-object v5, p1, v2

    if-eqz v5, :cond_1

    aget-object v5, p1, v2

    array-length v5, v5

    if-ne v5, v6, :cond_1

    aget-object v5, p1, v2

    aget v5, v5, v1

    if-le v5, v4, :cond_1

    aget-object v4, p1, v2

    aget v4, v4, v7

    aget-object v5, p1, v2

    aget v5, v5, v1

    if-lt v4, v5, :cond_1

    aget-object v4, p1, v2

    aget v4, v4, v7

    if-nez v3, :cond_0

    aget-object v3, p1, v2

    aget v3, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    if-lt v3, v2, :cond_4

    iget v2, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    if-gt v4, v2, :cond_4

    array-length v0, p1

    new-array v2, v6, [I

    aput v6, v2, v7

    aput v0, v2, v1

    const-class v0, I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v1

    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    aget-object v5, v0, v2

    aget-object v6, p1, v2

    aget v6, v6, v1

    aput v6, v5, v1

    aget-object v5, v0, v2

    aget-object v6, p1, v2

    aget v6, v6, v7

    aput v6, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->pageRanges:[[I

    iput v3, p0, Lorg/apache/poi/java/awt/JobAttributes;->prFirst:I

    iput v4, p0, Lorg/apache/poi/java/awt/JobAttributes;->prLast:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrinter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->printer:Ljava/lang/String;

    return-void
.end method

.method public setSides(Lorg/apache/poi/java/awt/JobAttributes$SidesType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->sides:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute sides"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSidesToDefault()V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->ONE_SIDED:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/JobAttributes;->setSides(Lorg/apache/poi/java/awt/JobAttributes$SidesType;)V

    return-void
.end method

.method public setToPage(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->fromPage:I

    if-eqz v0, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->minPage:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/JobAttributes;->maxPage:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lorg/apache/poi/java/awt/JobAttributes;->toPage:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute toPage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getPageRanges()[[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "["

    move v4, v1

    move v5, v2

    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_1

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    aget v3, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    aget v3, v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copies="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getCopies()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",defaultSelection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getDefaultSelection()Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",destination="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getDestination()Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",dialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getDialog()Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fromPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getFromPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMaxPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",minPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMinPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",multiple-document-handling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getMultipleDocumentHandling()Lorg/apache/poi/java/awt/JobAttributes$MultipleDocumentHandlingType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",page-ranges="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",printer="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getPrinter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sides="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getSides()Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",toPage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/JobAttributes;->getToPage()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
