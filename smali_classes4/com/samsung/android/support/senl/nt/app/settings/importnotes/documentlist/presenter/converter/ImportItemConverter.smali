.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/converter/ImportItemConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$ImportItemConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromImportItem(Ld1/d;Landroid/content/Context;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 4

    invoke-virtual {p0}, Ld1/d;->j()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ld1/d;->l()I

    move-result v1

    const/16 v3, 0x21

    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->getMaxTextureSize()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;-><init>(Landroid/content/Context;I)V

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ld1/d;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ld1/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getMetaData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string p0, "ST$ImportItemConverter"

    const-string p1, "context is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ld1/d;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMO_DATA/"

    const-string v2, "MEMO_DATA_V_1/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ld1/d;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getMemoMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    move-result-object v2

    :goto_0
    return-object v2
.end method
