.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeLinkifyDelegateImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V

    return-void
.end method

.method private addPrefix(Landroid/text/Spannable;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->setWesternDateTimeFormat(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->getherLinksStandard(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->getherLinksEnglish(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->getherLinksWestern(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->getherLinksKorean(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->removeSpanForTel(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mUrl:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mUrl:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTime(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->addPrefix(Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    const-string v1, "standard_date_time_1://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x17

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 00:00"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->DAY_FORMAT:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "standard_data_time_2://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v4, "standard_date_time_3://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v4, "standard_date_time_4://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, " am"

    const-string v2, "am"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, " pm"

    const-string v2, "pm"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v1, ","

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->handleEnglishDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->handleKoreanDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->handleWesternDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V

    :cond_5
    :goto_2
    new-instance p1, Landroid/util/Pair;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->toDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getherLinksEnglish(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "english_date_time_1://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "english_date_time_2://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "english_date_time_3://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "english_date_time_4://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "english_date_time_5://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    return-void
.end method

.method private getherLinksKorean(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "korean_date_time_1://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "korean_date_time_2://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "korean_date_time_3://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "korean_date_time_4://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "korean_date_time_6://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    return-void
.end method

.method private getherLinksStandard(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "standard_date_time_1://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "standard_data_time_2://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "standard_date_time_3://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "standard_date_time_4://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    return-void
.end method

.method private getherLinksWestern(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "western_date_time_1://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "western_date_time_2://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "western_date_time_3://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "western_date_time_4://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "western_date_time_5://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    return-void
.end method

.method private handleEngWesternDateTime1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/lang/String;Z)Z
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v0, ""

    if-eqz p3, :cond_0

    const-string p3, ","

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string p3, "."

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    aget-object v4, p2, v1

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getMonth(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->getMonth(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object p3, v0

    :goto_1
    aget-object p2, p2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 00:00"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    return v2
.end method

.method private handleEnglishDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z
    .locals 7

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "english_date_time_1://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->handleEngWesternDateTime1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "english_date_time_2://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "english_date_time_3://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "english_date_time_4://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tomorrow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    :cond_3
    array-length v0, p3

    if-ne v0, v2, :cond_5

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "tonight"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 8pm"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 00:00"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p2, p3

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_6

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v3, p3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "english_date_time_5://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->getModifiedTime()J

    move-result-wide v3

    invoke-static {v0, p2, p3, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->englishDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private handleKoreanDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

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

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    :goto_1
    move v5, v11

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v12, "korean_date_time_2://"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v12, "\ubd84"

    const-string v13, "\uc2dc"

    const-string v14, " "

    const-string v15, ":"

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v2, "\uc77c "

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v5, "korean_date_time_3://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

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

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v5, "korean_date_time_4://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "\uc2dc "

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTomorrow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    :cond_3
    array-length v4, v2

    if-ne v4, v11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

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
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v3, "korean_date_time_5://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->getModifiedTime()J

    move-result-wide v3

    move-object/from16 v5, p3

    invoke-static {v2, v1, v5, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->koreanDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v3, "korean_date_time_6://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v5, v4

    :goto_4
    return v5
.end method

.method private handleWesternDateTime(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V
    .locals 7

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "western_date_time_1://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->handleEngWesternDateTime1(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "western_date_time_2://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime2Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "western_date_time_3://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime3Scheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "western_date_time_4://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTomorrow:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    :cond_3
    array-length v0, p3

    if-ne v0, v2, :cond_5

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->mTonight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 8pm"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 00:00"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->isAllDay:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->sTime:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p2, p3

    :goto_1
    if-ge v2, p2, :cond_6

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    const-string v1, "western_date_time_5://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;->url:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkifyHelper;->getModifiedTime()J

    move-result-wide v1

    invoke-static {v0, p2, p3, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeScheme;->westernDateTime5Scheme(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method private removeSpanForTel(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mUrl:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Space}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {p1, v3, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v0, v3

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    aget-object v6, v0, v3

    invoke-interface {p1, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v3

    :goto_1
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-gt v5, v1, :cond_2

    if-gt v1, v6, :cond_2

    aget-object v4, v0, v3

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public setIntentExtraForDate(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x2d

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->getTime(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;->getDateTimeIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "beginTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "allDay"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method
