.class public Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMOJI_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final alphanumSupEndCodePoint:I = 0x1f1ff

.field private static final alphanumSupStartCodePoint:I = 0x1f100

.field private static final emojiEndCodePoint:I = 0x1f6ff

.field private static final emojiStartCodePoint:I = 0x1f300


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endEmojiString(Ljava/lang/CharSequence;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static endEmojiString(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static getPattern()Ljava/util/regex/Pattern;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiList;->getEmoticonMap()[Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiInfo;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiList;->getEmoticonMap()[Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiInfo;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiInfo;->getEmoticonCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static getUnicode(II)I
    .locals 1

    int-to-char v0, p0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-char v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, p1

    const p1, -0x35fdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method public static hasEmojiString(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isEmoji(I)Z
    .locals 1

    const v0, 0x1f300

    if-gt v0, p0, :cond_0

    const v0, 0x1f6ff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnclosedAlphanumSuppplement(I)Z
    .locals 1

    const v0, 0x1f100

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHighSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLowSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xdc00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static startEmojiString(Ljava/lang/CharSequence;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static startEmojiString(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    const-string v1, ""

    const/4 v2, 0x4

    if-le p0, v2, :cond_0

    const/high16 p0, 0x1f0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1

    const v2, 0xdc00

    and-int/lit16 v3, v0, 0x3ff

    or-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xd800

    const v5, 0xfc00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0xa

    or-int/2addr v0, v3

    shl-int/lit8 p0, p0, 0x6

    or-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
