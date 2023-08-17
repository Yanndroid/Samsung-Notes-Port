.class public Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;
    }
.end annotation


# static fields
.field private static final GROUP_COMMA_PHONE:I = 0x1

.field private static final GROUP_ZERO_BRACKETS:I = 0x3

.field private static final PAT_COMMA_PHONE:Ljava/util/regex/Pattern;

.field private static final PAT_REGEX_NO_SPACE_CORRECTION:Ljava/util/regex/Pattern;

.field private static final PAT_REGEX_PHONE_BASIC1:Ljava/util/regex/Pattern;

.field private static final PAT_REGEX_PHONE_BASIC2:Ljava/util/regex/Pattern;

.field private static final PAT_REGEX_PHONE_BASIC3:Ljava/util/regex/Pattern;

.field private static final PAT_REGEX_PHONE_BASIC4:Ljava/util/regex/Pattern;

.field private static final PHONE_CNTRY_CODE_MAX_DIGITS:I = 0xf

.field private static final PHONE_CNTRY_CODE_MIN_DIGITS:I = 0xb

.field private static final PHONE_MAX_DIGITS:I = 0xc

.field private static final PHONE_MIN_DIGITS:I = 0xa

.field private static final PHONE_PREFIX:Ljava/lang/String; = "mobile|mob|m\\.p\\.|m\\.p|phone|ph|phn|tel|fax"

.field private static final REGEX_COMMA_PHONE:Ljava/lang/String; = "(?:mobile|mob|m\\.p\\.|m\\.p|phone|ph|phn|tel|fax)(?:\\s*:?\\s*)(\\+(\\d){1,3}\\s*(\\.|,)(([\\s0-9]+)\\s*(\\.|,)\\s*){2}\\d+)(?:$|\\s|,|\\.)"

.field private static final REGEX_NO_SPACE_CORRECTION:Ljava/lang/String; = "(?:^|\\s)([mft](:?))(\\+)(\\d{1,3})\\s*([()0O\\[\\]]{3})\\s*(\\d+)\\s"

.field private static final REGEX_PHONE_BASIC1:Ljava/lang/String; = "(\\+\\s*)?(\\d){1,3}\\s*(-|\\.)\\s*(\\d){1,3}\\s*(-|\\.)\\s*(\\d)+"

.field private static final REGEX_PHONE_BASIC2:Ljava/lang/String; = "(\\+)\\s*(\\d){1,3}\\s*([()0O\\[\\]]{3})\\s*(\\d)+\\s*(\\d)+"

.field private static final REGEX_PHONE_BASIC3:Ljava/lang/String; = "((\\d{1,3})(\\s\\d)?(-|\\s))(\\d{2,4})((-|\\s)?)(\\d{2,6})"

.field private static final REGEX_PHONE_BASIC4:Ljava/lang/String; = "(\\d{1,3})(-)(\\d{1,2})(-)((\\d|\\s){3,5})(-)((\\d|\\s){3,6})"

.field private static final TAG:Ljava/lang/String; = "PhoneNumberCorrection"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(?:^|\\s)([mft](:?))(\\+)(\\d{1,3})\\s*([()0O\\[\\]]{3})\\s*(\\d+)\\s"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_NO_SPACE_CORRECTION:Ljava/util/regex/Pattern;

    const-string v0, "(?:mobile|mob|m\\.p\\.|m\\.p|phone|ph|phn|tel|fax)(?:\\s*:?\\s*)(\\+(\\d){1,3}\\s*(\\.|,)(([\\s0-9]+)\\s*(\\.|,)\\s*){2}\\d+)(?:$|\\s|,|\\.)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_COMMA_PHONE:Ljava/util/regex/Pattern;

    const-string v0, "(\\+\\s*)?(\\d){1,3}\\s*(-|\\.)\\s*(\\d){1,3}\\s*(-|\\.)\\s*(\\d)+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC1:Ljava/util/regex/Pattern;

    const-string v0, "(\\+)\\s*(\\d){1,3}\\s*([()0O\\[\\]]{3})\\s*(\\d)+\\s*(\\d)+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC2:Ljava/util/regex/Pattern;

    const-string v0, "((\\d{1,3})(\\s\\d)?(-|\\s))(\\d{2,4})((-|\\s)?)(\\d{2,6})"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC3:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,3})(-)(\\d{1,2})(-)((\\d|\\s){3,5})(-)((\\d|\\s){3,6})"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC4:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctPhoneNumberZeroBracket(Lcom/samsung/android/ocr/MOCRResult$Line;Ljava/util/regex/Matcher;II)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "(0)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v1, v1, p2

    iget-object v2, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Zero correction at pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in word "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p3, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    add-int/lit8 v0, p0, 0x3

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    iget-object p3, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-nez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ocr/MOCRResult$Char;

    const/16 v0, 0x28

    iput v0, p3, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    add-int/lit8 p3, p0, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ocr/MOCRResult$Char;

    const/16 v0, 0x30

    iput v0, p3, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    add-int/lit8 p0, p0, 0x2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/MOCRResult$Char;

    const/16 p3, 0x29

    iput p3, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    new-array p0, v2, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p0, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length p0, p0

    :goto_1
    iput p0, v1, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    const-string p0, "Post OCR Phone Zero bracket correction"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;I)[I

    move-result-object p0

    return-object p0
.end method

.method private static getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;I)[I
    .locals 9

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p0, :cond_1

    move p0, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p2

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_2
    iget v3, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v1, v3, :cond_3

    iget-object v3, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v6, v3, v2

    if-ge v6, p2, :cond_2

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sub-int v3, p2, v2

    goto :goto_3

    :cond_3
    move v1, v4

    move v3, v1

    :goto_3
    move v6, v1

    :goto_4
    iget v7, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge v6, v7, :cond_5

    iget-object v7, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v8, v7, v2

    if-ge v8, p0, :cond_4

    add-int/2addr v2, v7

    add-int/2addr v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    sub-int v4, p0, v2

    move p1, v4

    move v4, v6

    goto :goto_5

    :cond_5
    move p1, v4

    :goto_5
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput p2, v2, v0

    aput p0, v2, v5

    const/4 p0, 0x2

    aput v1, v2, p0

    const/4 p0, 0x3

    aput v4, v2, p0

    const/4 p0, 0x4

    aput v3, v2, p0

    const/4 p0, 0x5

    aput p1, v2, p0

    return-object v2
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;)V

    return-void
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v4, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v4}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Point;

    iput-object v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    iget-object v6, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v6, p1

    aget-object v6, v6, p2

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v7, v1

    aput-object v8, v5, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v6, v3

    aput-object v8, v5, v3

    const/4 v8, 0x2

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    const/4 v6, 0x3

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, p1

    :goto_2
    if-gt v8, p2, :cond_3

    iget-object v9, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v9, v9, v8

    iget-object v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    add-float/2addr v5, v10

    if-eqz v2, :cond_2

    iget-object v9, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    if-ne p3, v8, :cond_5

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    :goto_3
    if-ltz v9, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v3

    if-eq v9, v10, :cond_4

    const/16 v10, 0x2e

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-eqz v2, :cond_4

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/ocr/MOCRResult$Char;

    iput v10, v11, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_4
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->REPLACE_SQUARE_BRACKET:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    if-ne p3, v8, :cond_6

    const-string p3, "]"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v8, -0x1

    if-eq p3, v8, :cond_6

    const/16 v8, 0x29

    invoke-virtual {v7, p3, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-eqz v2, :cond_6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ocr/MOCRResult$Char;

    iput v8, p3, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    sub-int p1, p2, p1

    add-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr v5, p1

    iput v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    if-eqz v2, :cond_7

    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length p1, p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :goto_4
    iput p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v3

    :goto_5
    iget p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge p2, p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p1, p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    return-void
.end method

.method private static splitPhonePrefix(Lcom/samsung/android/ocr/MOCRResult$Line;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v5, v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v4, v4, v1

    iget-object v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-object v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/16 v8, 0x2b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    iget v9, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    new-instance v10, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v10}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    new-instance v11, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v11}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v7, 0x4

    new-array v12, v7, [Landroid/graphics/Point;

    iput-object v12, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    iget-object v13, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v14, v13, v3

    iget-object v14, v14, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v14, v14, v3

    aput-object v14, v12, v3

    add-int/lit8 v14, v8, -0x1

    aget-object v15, v13, v14

    iget-object v15, v15, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v15, v15, v6

    aput-object v15, v12, v6

    aget-object v14, v13, v14

    iget-object v14, v14, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    aput-object v14, v12, v15

    aget-object v14, v13, v3

    iget-object v14, v14, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    const/16 v16, 0x3

    aget-object v14, v14, v16

    aput-object v14, v12, v16

    new-array v7, v7, [Landroid/graphics/Point;

    iput-object v7, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v12, v13, v8

    iget-object v12, v12, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v12, v12, v3

    aput-object v12, v7, v3

    add-int/lit8 v12, v9, -0x1

    aget-object v14, v13, v12

    iget-object v14, v14, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v14, v14, v6

    aput-object v14, v7, v6

    aget-object v12, v13, v12

    iget-object v12, v12, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v12, v12, v15

    aput-object v12, v7, v15

    aget-object v12, v13, v8

    iget-object v12, v12, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    aget-object v12, v12, v16

    aput-object v12, v7, v16

    goto :goto_2

    :cond_2
    iget-object v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    invoke-virtual {v7}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/Point;

    iput-object v7, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    iget-object v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    invoke-virtual {v7}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/Point;

    iput-object v7, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    :goto_2
    iget v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    iget v12, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    int-to-float v12, v12

    div-float/2addr v7, v12

    iget-object v12, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    iput v12, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    iget-object v12, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    iput v12, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    if-eqz v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v12, v3

    :goto_3
    if-ge v12, v9, :cond_4

    iget-object v13, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v13, v13, v12

    if-ge v12, v8, :cond_3

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    new-array v4, v3, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object v4, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    new-array v4, v3, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object v4, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    iget-object v5, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length v5, v5

    iput v5, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    array-length v4, v4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    iput-object v4, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object v4, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    iget-object v4, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    iget-object v4, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5
    iput v4, v11, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/2addr v1, v6

    :goto_6
    iget v4, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge v1, v4, :cond_7

    iget-object v4, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    new-array v1, v3, [Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object v1, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v1, v1

    iput v1, v0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    return-void
.end method

.method public static validatePhoneLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_c

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_COMMA_PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    :cond_0
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    const-string v12, ""

    const-string v13, "\\D"

    const-string v14, "Post OCR Entity Validation"

    const/16 v16, 0x2

    const-string v2, "Original line :: "

    const/4 v15, 0x1

    if-eqz v11, :cond_2

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PAT_COMMA_PHONE match: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneNumber(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v9, v7, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;I)[I

    move-result-object v2

    aget v11, v2, v16

    const/4 v12, 0x3

    aget v2, v2, v12

    if-gt v11, v2, :cond_1

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;

    invoke-static {v7, v11, v2, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection$RegexActions;)V

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v10, v15

    goto :goto_2

    :cond_2
    if-nez v10, :cond_5

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC1:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    :goto_3
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_REGEX_PHONE_BASIC1 match: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v15, 0x1

    invoke-static {v11, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneNumber(IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v11

    aget v15, v11, v16

    const/16 v17, 0x3

    aget v11, v11, v17

    if-ge v15, v11, :cond_3

    invoke-static {v7, v15, v11}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    if-nez v10, :cond_6

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC2:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_REGEX_PHONE_BASIC2 match: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v11

    aget v15, v11, v16

    const/16 v17, 0x3

    aget v11, v11, v17

    invoke-static {v7, v9, v15, v11}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->correctPhoneNumberZeroBracket(Lcom/samsung/android/ocr/MOCRResult$Line;Ljava/util/regex/Matcher;II)V

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    move v15, v10

    :goto_5
    if-nez v15, :cond_9

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC3:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_REGEX_PHONE_BASIC3 match: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v15, 0x0

    invoke-static {v11, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneNumber(IZ)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    aget v11, v9, v16

    const/16 v17, 0x3

    aget v9, v9, v17

    if-ge v11, v9, :cond_7

    invoke-static {v7, v11, v9}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v9, v15

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    move v9, v15

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    if-nez v15, :cond_a

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->PAT_REGEX_PHONE_BASIC4:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAT_REGEX_PHONE_BASIC4 match: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneNumber(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v10, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v2

    aget v8, v2, v16

    const/4 v10, 0x3

    aget v2, v2, v10

    if-ge v8, v2, :cond_a

    invoke-static {v7, v8, v2}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v9, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private static validatePhoneNumber(IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    if-lt p0, p1, :cond_0

    const/16 p1, 0xf

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 p1, 0xa

    if-lt p0, p1, :cond_2

    const/16 p1, 0xc

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
