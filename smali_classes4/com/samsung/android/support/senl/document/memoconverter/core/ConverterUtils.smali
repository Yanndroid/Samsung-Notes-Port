.class public final Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$CategoryTable;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$FileTable;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$MemoTable;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_SyncState;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_Search;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_Category;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_Memo;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_File;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils$Tbl_Base;
    }
.end annotation


# static fields
.field public static final CATEGORY_COLUMNS:[Ljava/lang/String;

.field public static final CONVERT_MODE_NORMAL:I = 0x0

.field public static final CONVERT_MODE_RENAME:I = 0x2

.field public static final CONVERT_MODE_REPLACE:I = 0x1

.field public static final DB_VERSION:I = 0xa

.field public static final ETC_MEMO_COLUMNS:[Ljava/lang/String;

.field public static final FILE_COLUMNS:[Ljava/lang/String;

.field public static final MEMO_COLUMNS:[Ljava/lang/String;

.field public static final MEMO_COLUMNS_SEC:[Ljava/lang/String;

.field public static final MIME_TYPE_AUDIO_ALL:Ljava/lang/String; = "audio/*"

.field public static final MIME_TYPE_AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final MIME_TYPE_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final MIME_TYPE_UNKNOWN:Ljava/lang/String; = "application/octet-stream"

.field public static final NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConverterUtils"

.field public static final UUID_NONE:Ljava/lang/String; = ""

.field public static final YES:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "UUID"

    const-string v1, "orderBy"

    const-string v2, "sync1"

    const-string v3, "sync2"

    const-string v4, "_display_name"

    const-string v5, "accountName"

    const-string v6, "accountType"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->CATEGORY_COLUMNS:[Ljava/lang/String;

    const-string v1, "UUID"

    const-string v2, "memoUUID"

    const-string v3, "mime_type"

    const-string v4, "_display_name"

    const-string v5, "_size"

    const-string v6, "orientation"

    const-string v7, "_data"

    const-string v8, "sync1"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->FILE_COLUMNS:[Ljava/lang/String;

    const-string v1, "UUID"

    const-string v2, "createdAt"

    const-string v3, "categoryUUID"

    const-string v4, "title"

    const-string v5, "content"

    const-string v6, "strippedContent"

    const-string v7, "_data"

    const-string v8, "lastModifiedAt"

    const-string v9, "accountName"

    const-string v10, "accountType"

    const-string v11, "sync2"

    const-string v12, "sync1"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->MEMO_COLUMNS:[Ljava/lang/String;

    const-string v0, "xmlContent"

    const-string v1, "display_Content"

    const-string v2, "isFavorite"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->MEMO_COLUMNS_SEC:[Ljava/lang/String;

    const-string v1, "title"

    const-string v2, "createdAt"

    const-string v3, "lastModifiedAt"

    const-string v4, "category"

    const-string v5, "content"

    const-string v6, "voice"

    const-string v7, "folderUuid"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->ETC_MEMO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLockedMemoTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "tmp"

    :goto_0
    return-object p0
.end method

.method public static getRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "memo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "tmp"

    :goto_0
    return-object p0
.end method

.method public static handleNewLines(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, "</p><p>"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isMondrianOrPicassoInProduction()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "T320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T321"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T325"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T525"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
