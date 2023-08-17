.class public final Lcom/google/android/play/core/splitinstall/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/play/core/splitinstall/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/m;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/splitinstall/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/splitinstall/b;-><init>([B)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/y;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitinstall/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/b;->a(Lcom/google/android/play/core/splitinstall/y;)V

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/b;->a()Lcom/google/android/play/core/splitinstall/m;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/splitinstall/m;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/splitinstall/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
