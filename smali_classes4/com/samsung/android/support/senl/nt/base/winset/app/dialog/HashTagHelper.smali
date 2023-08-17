.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasicPattern()Ljava/util/regex/Pattern;
    .locals 1

    const-string v0, "[\\*/\\\\\\?:<>\\|\\n\"]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static getGraphemeLength(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static initEditTextInputOption(Landroid/widget/EditText;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSemSetActionModeAutoFillEnabled(Landroid/widget/TextView;Z)Z

    const v0, 0x10000006

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v0, "disableSticker=true;disableGifKeyboard=true;disableLiveMessage=true;disableEmoticonInput=true"

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    const v0, 0x84001

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public static isInvalidCharacterForTag(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->getGraphemeLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->isSpecialCharacter(C)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static isSpecialCharacter(C)Z
    .locals 4

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static removeExceptLetterOrDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[\\W_]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeInvalidCharacterForTag(Ljava/lang/CharSequence;II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->getBasicPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v1
.end method
