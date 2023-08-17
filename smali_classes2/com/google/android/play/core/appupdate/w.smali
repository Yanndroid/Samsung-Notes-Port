.class public final synthetic Lcom/google/android/play/core/appupdate/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/play/core/appupdate/y;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/y;
    .locals 3

    const-class v0, Lcom/google/android/play/core/appupdate/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/appupdate/w;->a:Lcom/google/android/play/core/appupdate/y;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/appupdate/x;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/appupdate/x;-><init>([B)V

    new-instance v2, Lcom/google/android/play/core/appupdate/g;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/appupdate/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/appupdate/x;->a(Lcom/google/android/play/core/appupdate/g;)V

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/x;->a()Lcom/google/android/play/core/appupdate/y;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/appupdate/w;->a:Lcom/google/android/play/core/appupdate/y;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/appupdate/w;->a:Lcom/google/android/play/core/appupdate/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
