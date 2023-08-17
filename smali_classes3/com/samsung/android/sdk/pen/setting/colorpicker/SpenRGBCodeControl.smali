.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;
    }
.end annotation


# static fields
.field private static final COLOR_CHANEL_MAX_VALUE:I = 0xff

.field private static final COLOR_CHANEL_MIN_VALUE:I = 0x0

.field private static final HEX_BLUE:I = 0x3

.field private static final HEX_GREEN:I = 0x2

.field private static final HEX_RED:I = 0x1

.field private static final NEW_LINE_CHARECTER_ASCII:I = 0xa

.field private static final RGB_HEX_CHARACTERS:Ljava/lang/String; = "ABCDEFabcdef"

.field private static final RGB_HEX_MAX_LENGTH:I = 0x6

.field private static final RGB_HEX_PATTERN:Ljava/lang/String; = "^[a-fA-F0-9]+$"

.field private static final RGB_HEX_STRING_DEFAULT:Ljava/lang/String; = "000000"

.field private static final TAG:Ljava/lang/String; = "SpenHexColorControl"


# instance fields
.field private mBlue:Landroid/widget/EditText;

.field private final mColorTextWatcher:Landroid/text/TextWatcher;

.field private mGreen:Landroid/widget/EditText;

.field private mIsUpdating:Z

.field private mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

.field private mRGBCode:Landroid/widget/EditText;

.field private final mRGBCodeTextFilter:Landroid/text/InputFilter;

.field private final mRGBCodeTextWatcher:Landroid/text/TextWatcher;

.field private mRed:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mIsUpdating:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCodeTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mColorTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCodeTextFilter:Landroid/text/InputFilter;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->checkActionKey(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateColor(Landroid/widget/EditText;II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->notifyColorChanged(III)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->getNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->getSelectionIndex(Landroid/widget/EditText;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mIsUpdating:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateColorByUser(II)V

    return-void
.end method

.method private checkActionKey(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    :cond_2
    return-void
.end method

.method private getNumber(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getSelectionIndex(Landroid/widget/EditText;Ljava/lang/String;I)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    if-le v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p1, p2

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private notifyColorChanged(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyColorChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenHexColorControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateCodeText(III)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCode:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCodeText() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "#%02X%02X%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenHexColorControl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCode:Landroid/widget/EditText;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "%02X%02X%02X"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateColor(Landroid/widget/EditText;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mIsUpdating:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mIsUpdating:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenHexColorControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mIsUpdating:Z

    :cond_3
    return-void
.end method

.method private updateColorByUser(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, p2

    move p2, p1

    move p1, v0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateCodeText(III)V

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->notifyColorChanged(III)V

    :cond_2
    return-void
.end method

.method private updateView(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateColor(Landroid/widget/EditText;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateColor(Landroid/widget/EditText;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateColor(Landroid/widget/EditText;II)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateCodeText(III)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->removeEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    return-void
.end method

.method public setEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateView(III)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->addEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    :cond_0
    return-void
.end method

.method public setRGBView(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 4

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCode:Landroid/widget/EditText;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCodeTextFilter:Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCode:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRGBCodeTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    new-array p1, v3, [Landroid/text/InputFilter;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;

    const/16 v1, 0xff

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;II)V

    aput-object v0, p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mRed:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mColorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    new-array p1, v3, [Landroid/text/InputFilter;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;

    invoke-direct {p2, p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;II)V

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mGreen:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mColorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    new-array p1, v3, [Landroid/text/InputFilter;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;

    invoke-direct {p2, p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$InputFilterMinMax;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;II)V

    aput-object p2, p1, v2

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mBlue:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->mColorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V
    .locals 0

    return-void
.end method

.method public update(Ljava/lang/String;IFFF)V
    .locals 3

    const-string v0, "SpenHexColorControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x4

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x7

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "received update() eventType=%s, color=%X(%d,%d,%d), hsv[%f, %f, %f]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->updateView(III)V

    return-void
.end method
