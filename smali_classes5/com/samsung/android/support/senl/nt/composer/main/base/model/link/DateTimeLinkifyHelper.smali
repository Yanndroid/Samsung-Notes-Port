.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;
    }
.end annotation


# static fields
.field private static mModifiedTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 12

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/g;)V

    iput-object p0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/InternalURLSpan;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/InternalURLSpan;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->DAY_FORMAT:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v4, "standard_date_time_1://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " 00:00"

    const/16 v5, 0x17

    if-eqz v3, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v6, "standard_data_time_2://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v6, 0x20

    if-eqz v3, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v7, "standard_date_time_3://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v7, "standard_date_time_4://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x1

    const-string v8, " "

    if-eqz v3, :cond_3

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v2, " am"

    const-string v3, "am"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v2, " pm"

    const-string v3, "pm"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "english_date_time_1://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->handleEngWesternScheme1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "english_date_time_2://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "english_date_time_3://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "english_date_time_4://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "tomorrow"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-wide v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    sput-wide v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    :cond_7
    array-length v3, v2

    if-ne v3, v7, :cond_9

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tonight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 8pm"

    goto/16 :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v1, v2

    :goto_2
    if-ge v7, v1, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v4, "english_date_time_5://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-wide v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v1, v2, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->handleKoreanDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->handleWesternDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V

    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/InternalURLSpan;->setTimeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/InternalURLSpan;->setAllDay(Z)V

    const/16 v0, 0x21

    invoke-interface {p3, p0, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/UriLinkHelper;->makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getModifiedTime()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    return-wide v0
.end method

.method private static handleEngWesternScheme1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->extractDate([Ljava/lang/String;)[Ljava/lang/String;

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

    const-string p1, " 00:00"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    return-void
.end method

.method private static handleKoreanDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v3, "korean_date_time_1://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " 00:00"

    const-string v4, "\uc77c"

    const-string v6, "\uc6d4 "

    const-string v7, "\ub144 "

    const-string v8, ""

    const/16 v9, 0x15

    const-string v10, "/"

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    :goto_1
    move v5, v11

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v12, "korean_date_time_2://"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v12, "\ubd84"

    const-string v13, "\uc2dc"

    const-string v14, " "

    const-string v15, ":"

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v2, "\uc77c "

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "korean_date_time_3://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sub-int/2addr v1, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v5, "korean_date_time_4://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "\uc2dc "

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTomorrow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-wide v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    :cond_3
    array-length v4, v2

    if-ne v4, v11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_4
    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    move v4, v11

    :goto_3
    if-ge v4, v3, :cond_5

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v3, "korean_date_time_5://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    move-object/from16 v5, p2

    invoke-static {v2, v1, v5, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->koreanDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v3, "korean_date_time_6://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v5, v4

    :goto_4
    return v5
.end method

.method private static handleWesternDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, "western_date_time_1://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->handleEngWesternScheme1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, "western_date_time_2://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, "western_date_time_3://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, "western_date_time_4://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTomorrow:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-wide v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    :cond_3
    array-length v0, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTonight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 8pm"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 00:00"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    sget-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p2

    :goto_1
    if-ge v2, p1, :cond_6

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, "western_date_time_5://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper$DateTimeData;->sTime:Ljava/lang/String;

    sget-wide v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->mModifiedTime:J

    invoke-static {v0, p1, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public static toDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Date;
    .locals 12

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v1, "am"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":00"

    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0x2c

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "\\s+"

    const-string v6, " "

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    new-array v7, v3, [Ljava/lang/String;

    array-length v8, p1

    invoke-static {p1, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/4 v11, 0x2

    if-ge v8, v9, :cond_8

    aget-object v8, p1, v11

    aput-object v8, v7, v4

    aget-object v8, p1, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v10, :cond_5

    aget-object p0, p1, v4

    aput-object p0, v7, v5

    aget-object p0, p1, v5

    aput-object p0, v7, v11

    goto :goto_3

    :cond_5
    aget-object v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v10, :cond_6

    aget-object p0, p1, v5

    aput-object p0, v7, v5

    aget-object p0, p1, v4

    aput-object p0, v7, v11

    goto :goto_3

    :cond_6
    aget-object v8, p1, v4

    aput-object v8, v7, v5

    aget-object v8, p1, v5

    aput-object v8, v7, v11

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string v8, "dd-MM-yyyy"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "d/M/yy"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "dd/MM/yy"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "dd/MM/y"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "dd.MM.yy"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    aget-object p0, p1, v5

    aput-object p0, v7, v5

    aget-object p0, p1, v4

    aput-object p0, v7, v11

    :cond_8
    :goto_3
    move p0, v5

    :goto_4
    if-ge p0, v3, :cond_a

    aget-object p1, v7, p0

    if-eqz p1, :cond_9

    aget-object p1, v7, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v5, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v7, p0

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, p0

    :cond_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_a
    const/4 p0, 0x3

    if-eqz v1, :cond_b

    aget-object p1, v7, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, p0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v7, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v7, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v7, v11

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v7, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v7, v9

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "yyyy/MM/dd HH:mm"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    const-string p1, "Asia/Shanghai"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_c

    return-object p0

    :cond_c
    move-object v0, p0

    :catch_0
    return-object v0
.end method
