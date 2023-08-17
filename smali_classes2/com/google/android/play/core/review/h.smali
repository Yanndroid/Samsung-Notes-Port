.class public final Lcom/google/android/play/core/review/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/play/core/internal/af;


# instance fields
.field public final a:Lcom/google/android/play/core/internal/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ap<",
            "Lcom/google/android/play/core/internal/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/review/h;->b:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/review/h;->c:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lcom/google/android/play/core/internal/ap;

    sget-object v4, Lcom/google/android/play/core/review/h;->b:Lcom/google/android/play/core/internal/af;

    sget-object v7, Lcom/google/android/play/core/review/d;->a:Lcom/google/android/play/core/internal/al;

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/internal/ap;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/af;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/al;)V

    iput-object v0, p0, Lcom/google/android/play/core/review/h;->a:Lcom/google/android/play/core/internal/ap;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/play/core/review/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/review/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b()Lcom/google/android/play/core/internal/af;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/review/h;->b:Lcom/google/android/play/core/internal/af;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/review/h;->b:Lcom/google/android/play/core/internal/af;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/play/core/review/h;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "requestInAppReview (%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/i;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/i;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/review/h;->a:Lcom/google/android/play/core/internal/ap;

    new-instance v2, Lcom/google/android/play/core/review/e;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/review/e;-><init>(Lcom/google/android/play/core/review/h;Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/tasks/i;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/ap;->a(Lcom/google/android/play/core/internal/ag;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/i;->a()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method
