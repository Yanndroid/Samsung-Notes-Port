.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENGLISH_DATE_TIME_1_SCHEME:Ljava/lang/String; = "english_date_time_1://"

.field public static final ENGLISH_DATE_TIME_2_SCHEME:Ljava/lang/String; = "english_date_time_2://"

.field public static final ENGLISH_DATE_TIME_3_SCHEME:Ljava/lang/String; = "english_date_time_3://"

.field public static final ENGLISH_DATE_TIME_4_SCHEME:Ljava/lang/String; = "english_date_time_4://"

.field public static final ENGLISH_DATE_TIME_5_SCHEME:Ljava/lang/String; = "english_date_time_5://"

.field public static final KOREAN_DATE_TIME_1_SCHEME:Ljava/lang/String; = "korean_date_time_1://"

.field public static final KOREAN_DATE_TIME_2_SCHEME:Ljava/lang/String; = "korean_date_time_2://"

.field public static final KOREAN_DATE_TIME_3_SCHEME:Ljava/lang/String; = "korean_date_time_3://"

.field public static final KOREAN_DATE_TIME_4_SCHEME:Ljava/lang/String; = "korean_date_time_4://"

.field public static final KOREAN_DATE_TIME_5_SCHEME:Ljava/lang/String; = "korean_date_time_5://"

.field public static final KOREAN_DATE_TIME_6_SCHEME:Ljava/lang/String; = "korean_date_time_6://"

.field public static final STANDARD_DATE_TIME_1_SCHEME:Ljava/lang/String; = "standard_date_time_1://"

.field public static final STANDARD_DATE_TIME_2_SCHEME:Ljava/lang/String; = "standard_data_time_2://"

.field public static final STANDARD_DATE_TIME_3_SCHEME:Ljava/lang/String; = "standard_date_time_3://"

.field public static final STANDARD_DATE_TIME_4_SCHEME:Ljava/lang/String; = "standard_date_time_4://"

.field public static final WESTERN_DATE_TIME_1_SCHEME:Ljava/lang/String; = "western_date_time_1://"

.field public static final WESTERN_DATE_TIME_2_SCHEME:Ljava/lang/String; = "western_date_time_2://"

.field public static final WESTERN_DATE_TIME_3_SCHEME:Ljava/lang/String; = "western_date_time_3://"

.field public static final WESTERN_DATE_TIME_4_SCHEME:Ljava/lang/String; = "western_date_time_4://"

.field public static final WESTERN_DATE_TIME_5_SCHEME:Ljava/lang/String; = "western_date_time_5://"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mArrDayOfWeek:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v3, v0, :cond_2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mArrDayOfWeek:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    :cond_0
    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mArrDayOfWeek:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v2

    const-wide/32 v2, 0x5265c00

    if-lez v1, :cond_3

    :goto_1
    int-to-long v0, v1

    mul-long/2addr v0, v2

    add-long/2addr p3, v0

    goto :goto_2

    :cond_3
    if-gez v1, :cond_4

    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dataTime3Scheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, ""

    if-lez p1, :cond_1

    aget-object v2, p0, p1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getMonth(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    aget-object v2, p0, p1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getMonth(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    array-length v3, p0

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :cond_2
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p0

    sub-int/2addr p1, v1

    :goto_2
    if-ge v0, p1, :cond_3

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v1, p0, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dateTime2Scheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->extractDate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p0

    const/4 v1, 0x3

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static englishDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->dateTime2Scheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static englishDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->dataTime3Scheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static englishDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->adjustTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    aget-object p3, p0, p1

    const-string p4, "morning"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x2

    const/16 v0, 0x20

    if-eqz p3, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object p0, p0, p4

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_1
    aget-object p3, p0, p1

    const-string v1, "afternoon"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    aget-object p3, p0, p1

    const-string v1, "evening"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    aget-object p3, p0, p1

    const-string v1, "night"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    array-length p3, p0

    :goto_1
    if-ge p1, p3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object p4, p0, p1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object p0, p0, p4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "pm"

    goto :goto_0

    :goto_3
    return-object p0
.end method

.method public static koreanDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    const/16 p2, 0x15

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mHour:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mMinute:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mHour:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aget-object p2, p0, p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getEnglishWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mMorning:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 p4, 0x20

    const/4 v0, 0x1

    if-nez p3, :cond_3

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mKrMorning2:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mKrMorning3:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mAfternoon:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mEvening:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTonight:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_1
    array-length p2, p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p1, p0, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, " pm"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p0

    :goto_2
    if-ge v0, p1, :cond_4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object p3, p0, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static westernDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->dateTime2Scheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static westernDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->dataTime3Scheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static westernDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getEnglishWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->adjustTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p3, p0, p2

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mMorning:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p4

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_0
    aget-object p3, p0, p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mAfternoon:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    aget-object p3, p0, p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mEvening:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    aget-object p3, p0, p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mNight:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p0

    :goto_1
    if-ge p2, p1, :cond_2

    const/16 p4, 0x20

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object p4, p0, p2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pm"

    goto :goto_0

    :goto_3
    return-object p0
.end method
