.class public final Lcom/google/android/play/core/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field public static final a:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/l;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/l;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/k;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/k;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
