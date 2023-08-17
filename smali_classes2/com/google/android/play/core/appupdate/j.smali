.class final synthetic Lcom/google/android/play/core/appupdate/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/al;


# static fields
.field public static final a:Lcom/google/android/play/core/internal/al;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/appupdate/j;

    invoke-direct {v0}, Lcom/google/android/play/core/appupdate/j;-><init>()V

    sput-object v0, Lcom/google/android/play/core/appupdate/j;->a:Lcom/google/android/play/core/internal/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/internal/m;->a(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/n;

    move-result-object p1

    return-object p1
.end method
