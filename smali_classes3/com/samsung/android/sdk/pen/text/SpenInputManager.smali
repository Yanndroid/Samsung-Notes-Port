.class public Lcom/samsung/android/sdk/pen/text/SpenInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;,
        Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;,
        Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;,
        Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;
    }
.end annotation


# static fields
.field private static AUTO_CORRECTION_HIGHLIGHT_COLOR:I = 0x33b5e5

.field private static final TAG:Ljava/lang/String; = "SpenInputManager"

.field private static final TYPE_COMPOSING_ALL:I = 0x18000


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

.field private mAutoCorrectionHighlightColor:I

.field private mBackupSpanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

.field private mDebugLevel:Ljava/lang/Integer;

.field private mEditable:Landroid/text/Editable;

.field private mHasComposingSpan:Z

.field private mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

.field private mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

.field private mIsEditingByUser:Z

.field private mIsInsertingLineFeed:Z

.field private mIsTextComposingStateStarted:Z

.field private mIsTextInputBlocked:Z

.field private mKeyListener:Landroid/text/method/KeyListener;

.field private mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

.field private mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field private mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

.field private mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

.field private mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

.field private mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

.field private mSuggestionPopupListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

.field private mTextComposingListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

.field private mTextLimit:I

.field private mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

.field private mView:Landroid/view/View;

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mDebugLevel:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsEditingByUser:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsInsertingLineFeed:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopupListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    const/16 v1, 0x1388

    iput v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextLimit:I

    sget v1, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->AUTO_CORRECTION_HIGHLIGHT_COLOR:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAutoCorrectionHighlightColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextInputBlocked:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextComposingStateStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHasComposingSpan:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextComposingListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getDefaultTextLimit()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextLimit:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsEditingByUser:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsEditingByUser:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->replaceTextByEditable(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeComposingSpan(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeBullet(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mDebugLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHasComposingSpan:Z

    return p0
.end method

.method public static synthetic access$2002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHasComposingSpan:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextComposingStateStarted:Z

    return p0
.end method

.method public static synthetic access$2102(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextComposingStateStarted:Z

    return p1
.end method

.method public static synthetic access$2200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAutoCorrectionHighlightColor:I

    return p0
.end method

.method public static synthetic access$2302(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAutoCorrectionHighlightColor:I

    return p1
.end method

.method public static synthetic access$2400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeSuggestionSpan(III)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->updateContent(IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Landroid/text/style/SuggestionSpan;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getUnderlineColor(Landroid/text/style/SuggestionSpan;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeSuggestionSpanByObject(II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->blockTextInput(Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->updateEditable(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextInputBlocked:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    return-object p0
.end method

.method private blockTextInput(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->setTextInputBlock(Z)V

    :cond_1
    return-void
.end method

.method private finishComposingText()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->finishComposingText()Z

    return-void
.end method

.method private getUnderlineColor(Landroid/text/style/SuggestionSpan;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.text.style.SuggestionSpan"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUnderlineColor"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return v0
.end method

.method private init()V
    .locals 2

    const-string v0, "SpenInputManager"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->getDebugLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method private initEditable()V
    .locals 6

    const-string v0, "SpenInputManager"

    const-string v1, "initEditable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeChangeWatcher()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    const/4 v1, 0x1

    new-array v4, v1, [Landroid/text/InputFilter;

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v0, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->initKeyListener(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v2

    if-gez v2, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->initEditable(Landroid/text/Editable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->initInputConnection()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setChangeWatcher()V

    return-void

    :cond_5
    :goto_1
    const-string v1, "mObjectText/mEditable can not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initInputConnection()V
    .locals 3

    const-string v0, "SpenInputManager"

    const-string v1, "initInputConnection()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextComposingListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setEditable(Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method private initKeyListener(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getKeyListener(Ljava/lang/String;)Landroid/text/method/TextKeyListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    return-void
.end method

.method public static isInputMethodShown(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v1}, Lcom/samsung/android/spen/libwrapper/InputMethodManagerWrapper;->create(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Lcom/samsung/android/spen/libwrapper/InputMethodManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/InputMethodManagerWrapper;->isInputMethodShown()Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private makeImeOption()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getIMEActionType()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x0

    :goto_1
    :pswitch_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeInputType()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextInputType()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private removeBullet(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isBullet(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x20

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextParagraph(III)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeChangeWatcher()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeComposingSpan(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private removeIndent(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isIndent(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextParagraph(III)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeSuggestionSpan()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeSuggestionSpan(III)V

    :cond_0
    return-void
.end method

.method private removeSuggestionSpan(III)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_2

    add-int v1, p1, p2

    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsEditingByUser:Z

    if-eqz v6, :cond_0

    if-ne v5, p1, :cond_0

    if-ne v5, p1, :cond_1

    if-lez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeSuggestionSpanByObject(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v2

    if-ne v2, p2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private replaceTextByEditable(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginBatchEdit()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginDelete()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endDelete()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endBatchEdit()Z

    return-void

    :cond_2
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replaceTextByEditable wrong index: st:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", en:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mEditable length:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenInputManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private sendKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v2, :cond_5

    const/16 v2, 0x43

    if-eq p1, v2, :cond_1

    const/16 v2, 0x70

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginDelete()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginBatchEdit()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v0, v2, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endBatchEdit()Z

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endDelete()V

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method private setChangeWatcher()V
    .locals 5

    const-string v0, "SpenInputManager"

    const-string/jumbo v1, "setChangeWatcher()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeChangeWatcher()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    const v3, 0x640012

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_2

    const/16 v3, 0x12

    invoke-interface {v1, v2, v4, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-void
.end method

.method private updateContent(IIILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "onTextChanged replaceText("

    const/4 v2, 0x0

    const-string v3, ", "

    const-string v4, "SpenInputManager"

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v0, :cond_1

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->isTextChanged()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTextChanged removeText("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v4, p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setSurroundingTextLength(I)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "), str : "

    if-nez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v4, p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p3, p4, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->replaceText(Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getDeletedSurroundingTextLength()I

    move-result p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTextChanged surroundingTextLength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", deletedSurroundingLength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", str.length() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getSurroundingTextLength()I

    move-result v5

    if-nez v5, :cond_7

    const-string p3, ", str : "

    if-lez p2, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTextChanged insertTextAtCursor(), cursor : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertTextAtCursor(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3, p4, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p4, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mBackupSpanList:Ljava/util/ArrayList;

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setDeletedSurroundingTextLength(I)V

    goto :goto_2

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextChanged insertText at "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsInsertingLineFeed:Z

    xor-int/2addr p3, v0

    invoke-virtual {p2, p4, p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), str = "

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p2, p4, p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->replaceText(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setSurroundingTextLength(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updateEditable(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->before:I

    add-int/2addr v0, v1

    iget v1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "SpenInputManager"

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->before:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - replace."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    iget v7, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->before:I

    add-int v5, v7, v0

    iget p2, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    add-int v8, v7, p2

    move v4, v7

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    const-string p2, "onObjectChanged updateEditable"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->updateEditable(Landroid/text/Editable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SpenInputManager"

    const-string v1, "appendText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v0, v1, :cond_0

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    return-void
.end method

.method public canSelectAllText()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-le v2, v3, :cond_1

    move v4, v3

    move v3, v2

    move v2, v4

    :cond_1
    if-nez v2, :cond_2

    if-eq v3, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public close()V
    .locals 3

    const-string v0, "SpenInputManager"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeChangeWatcher()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopupListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->finishComposingText()Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    return-void
.end method

.method public dismissSuggestionPopup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->clearHighlightOnDismiss(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText()V

    :cond_0
    return-void
.end method

.method public getComposingSpanEnd()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getComposingSpanStart()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectionEnd()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    const-string v0, "SpenInputManager"

    const-string v1, "invalid state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    const-string v0, "SpenInputManager"

    const-string v1, "invalid state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-le p1, v0, :cond_0

    move v2, v0

    move v0, p1

    move p1, v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public hasComposingSpan(II)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    :cond_3
    return v1
.end method

.method public hideSoftInput(J)V
    .locals 3

    const-string v0, "SpenInputManager"

    const-string v1, "hideSoftInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onShowSoftInput(ZJ)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onShowSoftInput(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isSuggestionPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    const-string v0, "SpenInputManager"

    const-string v1, "onCreateInputConnection()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->makeImeOption()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->makeInputType()I

    move-result v2

    const/4 v3, 0x0

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const-string v3, "SPenSDK"

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    const-string v3, "customInputConnection=true"

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x10000000

    or-int/2addr v1, v4

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v1, v2, 0x4000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextComposingListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->clearBatchEdit()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateInputConnection() initialSelStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", initialSelEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "image/*"

    const-string v1, "image/gif"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-static {v1, p1, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onInsertLineFeed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setObjectText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsInsertingLineFeed:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginBatchEdit()Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->insertLineFeed(Landroid/text/Editable;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endBatchEdit()Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsInsertingLineFeed:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "onKeyDown - mObjectText is null"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_1

    const-string p1, "onKeyDown - mEditable is null"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-eq p1, v3, :cond_b

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_a

    const/16 v3, 0x70

    if-eq p1, v3, :cond_8

    const/16 v3, 0x42

    if-eq p1, v3, :cond_5

    const/16 v3, 0x43

    if-eq p1, v3, :cond_2

    sget v0, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_CLIPBOARD:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, v4}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onShowClipboard(Z)Z

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeBullet(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeIndent(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return v4

    :cond_5
    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeBullet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return v4

    :cond_8
    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeIndent(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return v4

    :cond_9
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeBullet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return v4

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->showSoftInput()V

    :cond_c
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->sendKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v4

    :cond_d
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getSelectionEnd()I

    move-result p2

    if-le p1, p2, :cond_0

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_0
    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p2, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSuggestionTextClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr p2, v0

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-direct {v0, v2, p1, v1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/Point;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->setSuggestionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopupListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->setActionListener(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->update(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/Point;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->show(Z)V

    return-void

    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuggestionTextClicked wrong index: spanStart:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", spanEnd:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mEditable length:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenInputManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public removeText()V
    .locals 4

    const-string v0, "SpenInputManager"

    const-string v1, "removeText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginDelete()V

    :cond_0
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-ge v0, v1, :cond_1

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputEmojiUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    sub-int v1, v0, v1

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endDelete()V

    :cond_5
    return-void
.end method

.method public selectAll(Z)V
    .locals 1

    const-string p1, "SpenInputManager"

    const-string v0, "selectAll()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    const-string v0, "mEditable can not be null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    :cond_1
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mActionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    return-void
.end method

.method public setCursorAnchorPosition(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->updateCursorAnchoInfo(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    const-string v0, "SpenInputManager"

    const-string/jumbo v1, "setDocument()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mHistoryEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopupListener:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;

    :cond_2
    return-void
.end method

.method public setObjectText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 4

    const-string v0, "SpenInputManager"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string/jumbo v2, "textObj is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeSuggestionSpan()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeChangeWatcher()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mChangeWatcher:Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result v3

    if-ne v2, v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->removeSuggestionSpan()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    :cond_4
    const-string/jumbo v1, "setObjectText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->initEditable()V

    return-void
.end method

.method public setSelection(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_6

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mObjectText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, p1, :cond_5

    if-ge v0, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    if-eqz v0, :cond_3

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsEditingByUser:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mInputConnection:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mEditable:Landroid/text/Editable;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->updateSelection(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;Landroid/text/Editable;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection() index out of bounds..editable length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", start = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", end = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public setSelectionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    return-void
.end method

.method public setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V
    .locals 2

    const-string v0, "SpenInputManager"

    const-string/jumbo v1, "setSoftInputListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    return-void
.end method

.method public setSuggestionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    return-void
.end method

.method public setTextInputBlock(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextInputBlocked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextInputBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText()V

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mIsTextInputBlocked:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->blockTextInput(Z)V

    return-void
.end method

.method public setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    return-void
.end method

.method public showSoftInput()V
    .locals 2

    const-string v0, "SpenInputManager"

    const-string/jumbo v1, "showSoftInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSoftInputListener:Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onShowSoftInput(Z)Z

    :cond_1
    return-void
.end method

.method public updateSuggestionPopup(Landroid/graphics/RectF;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v4, v0, v3

    add-int/2addr v2, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->clearHighlightOnDismiss(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->updatePosition(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mSuggestionPopup:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public viewClicked()V
    .locals 2

    const-string v0, "SpenInputManager"

    const-string/jumbo v1, "viewClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    return-void
.end method
