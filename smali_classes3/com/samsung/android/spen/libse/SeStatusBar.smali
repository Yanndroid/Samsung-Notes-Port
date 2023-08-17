.class public Lcom/samsung/android/spen/libse/SeStatusBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/StatusBarInterface;


# static fields
.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field private static mStatusBar:Lcom/samsung/android/spen/libse/SeStatusBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/spen/libse/SeStatusBar;
    .locals 1

    sget-object v0, Lcom/samsung/android/spen/libse/SeStatusBar;->mStatusBar:Lcom/samsung/android/spen/libse/SeStatusBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spen/libse/SeStatusBar;

    invoke-direct {v0}, Lcom/samsung/android/spen/libse/SeStatusBar;-><init>()V

    sput-object v0, Lcom/samsung/android/spen/libse/SeStatusBar;->mStatusBar:Lcom/samsung/android/spen/libse/SeStatusBar;

    :cond_0
    sget-object v0, Lcom/samsung/android/spen/libse/SeStatusBar;->mStatusBar:Lcom/samsung/android/spen/libse/SeStatusBar;

    return-object v0
.end method


# virtual methods
.method public collapsePanels(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public disable(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sem_statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SemStatusBarManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/SemStatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method
