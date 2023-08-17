.class public Lcom/sec/android/app/voicenote/common/util/TextDataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "TextDataConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToVRData(I[Ljava/lang/String;[J[J)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[J[J)",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/voicenote/common/util/TextData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    if-ne v1, p0, :cond_3

    array-length v1, p2

    if-ne v1, p0, :cond_3

    array-length v1, p3

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    new-instance v3, Lcom/sec/android/app/voicenote/common/util/TextData;

    invoke-direct {v3}, Lcom/sec/android/app/voicenote/common/util/TextData;-><init>()V

    iget-object v4, v3, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    aget-object v5, p1, v2

    aput-object v5, v4, v1

    aget-wide v4, p2, v2

    iput-wide v4, v3, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    aget-wide v4, p3, v2

    aget-wide v6, p2, v2

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sec/android/app/voicenote/common/util/TextData;->duration:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string p0, "TextDataConverter"

    const-string p1, "convertToVRData size not equal"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v0
.end method
