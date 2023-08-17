.class final synthetic Lcom/google/android/play/core/assetpacks/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# static fields
.field public static final a:Lcom/google/android/play/core/tasks/OnFailureListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/h;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/h;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/OnFailureListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/j;->a(Ljava/lang/Exception;)V

    return-void
.end method
