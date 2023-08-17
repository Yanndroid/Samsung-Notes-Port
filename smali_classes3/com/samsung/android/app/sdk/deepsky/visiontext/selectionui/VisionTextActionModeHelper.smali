.class public Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;
    }
.end annotation


# static fields
.field private static final ID_ASSIST:I = 0x1020041

.field private static final MENU_ITEM_ASSIST:I = 0x1020041

.field private static final MENU_ITEM_COPY:I = 0x1

.field private static final MENU_ITEM_SECONDARY_ASSIST:I = 0x4

.field private static final MENU_ITEM_SELECT_ALL:I = 0x2

.field private static final MENU_ITEM_SHARE:I = 0x3

.field private static final SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0x2bc

.field private static final SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.app.sdk.deepsky.visiontext.selectionui.VisionTextActionModeHelper"

.field private static mLanguageTags:Ljava/lang/String;

.field private static mLeftText:Ljava/lang/String;

.field private static mLeftTextLength:I

.field private static mRightText:Ljava/lang/String;


# instance fields
.field public mActionMode:Landroid/view/ActionMode;

.field public mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

.field public mEndHandleRect:Landroid/graphics/Rect;

.field private mPreserveSelectedText:Ljava/lang/String;

.field private mRequestFromLock:Z

.field public mStartHandleRect:Landroid/graphics/Rect;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

.field private mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field public mVisibleWordsRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mWinRectBottom:I

.field public mWinRectLeft:I

.field public mWinRectRight:I

.field public mWinRectTop:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectLeft:I

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectTop:I

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectRight:I

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectBottom:I

    iput-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mRequestFromLock:Z

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->setWindowRect()V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/e;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)V

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    return-void
.end method

.method public static synthetic a(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->lambda$createIntentOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLanguageTags:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLanguageTags:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Landroid/content/ClipData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLeftTextLength:I

    return v0
.end method

.method public static synthetic access$202(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mRequestFromLock:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mPreserveSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->makeChooserIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLeftText:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mRightText:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)Landroid/view/textclassifier/TextClassifier;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->startActionMode(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method private cancelAsyncTask()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private static createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/a;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->onTimeOut(Ljava/lang/Object;)V

    return-void
.end method

.method private getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "textview"

    invoke-direct {v1, v2, v3}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    const-string v1, "getTextClassificationSession - NO_OP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method private handleHidden(Landroid/graphics/Rect;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "win = Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " /Right:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectRight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " /bottom:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectBottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle = Left:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectRight:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectLeft:I

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectTop:I

    if-lt v0, v1, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectBottom:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$createIntentOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    const-string v0, "Error sending PendingIntent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private makeChooserIntent()Landroid/content/Intent;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mRequestFromLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mPreserveSelectedText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->exportReselectedTextData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private onTimeOut(Ljava/lang/Object;)V
    .locals 1

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->resetTextClassificationHelper(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;I)V

    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method private resetTextClassificationHelper(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/e;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method private startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startActionMode exception"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getView()Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private startActionMode(Landroid/view/textclassifier/TextClassification;)V
    .locals 1
    .param p1    # Landroid/view/textclassifier/TextClassification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->resetTextClassificationHelper(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;I)V

    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public setWindowRect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectRight:I

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectBottom:I

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mWinRectBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startActionMode(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->handleHidden(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->handleHidden(Landroid/graphics/Rect;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / endHandle:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mStartHandleRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mEndHandleRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mVisibleWordsRect:Ljava/util/ArrayList;

    const-string p1, ""

    if-nez p5, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    move-object p2, p5

    :goto_0
    sput-object p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLeftText:Ljava/lang/String;

    if-nez p6, :cond_1

    move-object p6, p1

    :cond_1
    sput-object p6, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mRightText:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    sput p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mLeftTextLength:I

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->startTextClassificationAsync(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public startTextClassificationAsync(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;->getLastTextClassificationText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startTextClassificationAsync - Same Text"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->cancelAsyncTask()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->resetTextClassificationHelper(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/d;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/d;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;)V

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/b;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/b;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)V

    new-instance v7, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/c;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/c;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/view/View;Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startTextClassificationAsync - Null or Empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
