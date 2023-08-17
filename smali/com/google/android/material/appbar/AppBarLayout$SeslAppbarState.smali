.class public Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslAppbarState"
.end annotation


# instance fields
.field private mCurrentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return v0
.end method

.method public onStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return-void
.end method
