.class public Lcom/google/android/gms/drive/widget/DataBufferAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final fieldId:I

.field private final resource:I

.field private final zzgw:Landroid/content/Context;

.field private zzmz:I

.field private final zzna:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final zznb:Landroid/view/LayoutInflater;

.field private zznc:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DataBufferAdapter"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznc:Z

    iput-object p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzgw:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzmz:I

    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->resource:I

    iput p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->fieldId:I

    iput-object p4, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznb:Landroid/view/LayoutInflater;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;II[Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method private final zza(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznb:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :try_start_0
    iget p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->fieldId:I

    if-nez p3, :cond_1

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p4, p1, Ljava/lang/CharSequence;

    if-eqz p4, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "DataBufferAdapter"

    const-string p4, "You must supply a resource ID for a TextView"

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "DataBufferAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public append(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznc:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznc:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzgw:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzmz:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zza(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzna:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v2, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->resource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zza(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznc:Z

    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zzmz:I

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->zznc:Z

    return-void
.end method
