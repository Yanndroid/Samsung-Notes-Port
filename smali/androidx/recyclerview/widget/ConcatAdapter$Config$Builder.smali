.class public final Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsolateViewTypes:Z

.field private mStableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method


# virtual methods
.method public build()Landroidx/recyclerview/widget/ConcatAdapter$Config;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/ConcatAdapter$Config;-><init>(ZLandroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V

    return-object v0
.end method

.method public setIsolateViewTypes(Z)Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    return-object p0
.end method

.method public setStableIdMode(Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object p0
.end method
