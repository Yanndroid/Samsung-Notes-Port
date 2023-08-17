.class final synthetic Lcom/google/android/play/core/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/ap;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/ah;->a:Lcom/google/android/play/core/internal/ap;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/ah;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->c()V

    return-void
.end method
