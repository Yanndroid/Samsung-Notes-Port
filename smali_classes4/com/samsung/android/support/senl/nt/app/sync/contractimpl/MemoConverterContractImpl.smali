.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$a;)Z
    .locals 1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$2;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;Lx/d$a;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;->convertToSDoc(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;->convertToSDoc(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z

    move-result p1

    return p1
.end method

.method public LMemoGetMemoCount(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;->getMemoCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public NMemoConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->convertToSDoc(ZLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public NMemoCoreConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->convertToSDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public NMemoGetMemoMetaData(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->getMemoMetaData()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public QMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$c;)Z
    .locals 1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;Lx/d$c;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;->convertToSDoc(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;->convertToSDoc(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z

    move-result p1

    return p1
.end method

.method public QMemoGetMemoCount(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;->getMemoCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public TMemoConvertToSDoc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z
    .locals 0

    if-eqz p4, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;

    invoke-direct {p1, p0, p4}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;Lx/d$b;)V

    :goto_0
    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->convertToSDoc(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public TMemoGetMemoMetaDataArray(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->getMemoMetaDataArray(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public createLMemoConverter()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNMemoConverter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createQMemoConverter()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/memoconvert/QMemoConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSNBConverter()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSPDConverter()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createScrapBookConverter()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->getMaxTextureSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public createTMemoConverter()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;-><init>()V

    return-object v0
.end method

.method public getNMemoValueConvertModeNormal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSnbConvertModeNormal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSnbConvertModeRename()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSnbConvertModeReplace()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSpdConvertModeNormal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpdConvertModeRename()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSpdConvertModeReplace()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSpdLastModifiedTime(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public isSnbAlreadyConverted(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSpdAlreadyConverted(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public jsonConverterConvertToSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->convertToSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public jsonConverterGetMemoMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getMemoMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    move-result-object p1

    return-object p1
.end method

.method public scrapBookConverterConvertToSDoc(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->convertToSDoc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scrapBookConverterGetMetaData(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getMetaData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    move-result-object p1

    return-object p1
.end method

.method public snbConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->convertToSDoc(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public spdConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->convertToSDoc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
