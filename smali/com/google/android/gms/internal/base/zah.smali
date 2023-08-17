.class final Lcom/google/android/gms/internal/base/zah;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public zaa:I

.field public zab:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/base/zah;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/base/zah;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/base/zah;->zaa:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zah;->zaa:I

    iget p1, p1, Lcom/google/android/gms/internal/base/zah;->zab:I

    iput p1, p0, Lcom/google/android/gms/internal/base/zah;->zab:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/base/zah;->zaa:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/base/zai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/zai;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    return-object v0
.end method
