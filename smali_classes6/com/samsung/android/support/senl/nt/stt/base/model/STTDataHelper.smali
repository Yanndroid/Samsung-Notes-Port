.class public Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STTDataHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyWord()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    move-result-object v1

    const-string v2, "... "

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->createTextData(Ljava/lang/String;II)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getNoTimingInfoWord(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
    .locals 1

    add-int/lit8 p1, p1, 0x64

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->createTextData(Ljava/lang/String;II)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->isRemoveWhiteSpaceCountry()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->trimText()V

    :cond_0
    return-object p0
.end method

.method public static getProcessingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\{[^}]*\\} "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProcessingString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSeparateWords(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTextData(Ljava/lang/String;[IZ)Ljava/util/ArrayList;
    .locals 11
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getSeparateWords(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWord - num of word: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - num of time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STTDataHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-ge v4, v2, :cond_0

    mul-int/lit8 v5, v4, 0x2

    aget v7, p1, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    mul-int/lit8 v5, v5, 0xa

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p0, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v7, v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->createTextData(Ljava/lang/String;II)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-le v0, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object p2, p0, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getNoTimingInfoWord(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getEmptyWord()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getTextData([Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 7
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWord - num of word: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STTDataHelper"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0xa

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    move-result-object v5

    aget-object v6, p0, v2

    invoke-virtual {v5, v6, v4, v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->createTextData(Ljava/lang/String;II)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getEmptyWord()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static isRemoveWhiteSpaceCountry()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ja"

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

.method public static writeSTTDataToShareFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "STTDataHelper"

    if-nez v0, :cond_0

    const-string p0, "writeSTTDataToShareFile: srcFile not exist"

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "writeSTTDataToShareFile: desFile clear"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getTextData([Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array v0, p3, [Ljava/lang/String;

    new-array v3, p3, [J

    new-array v4, p3, [J

    :goto_0
    if-ge v1, p3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getStartTime()I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v3, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getEndTime()I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v3, v4}, Lcom/sec/android/app/voicenote/common/util/TextDataConverter;->convertToVRData(I[Ljava/lang/String;[J[J)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->makeFileWithSTTData(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeSTTDataToShareFile: success "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "writeSTTDataToShareFile: failed "

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p0
.end method
