.class public Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedStableIdStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
    }
.end annotation


# instance fields
.field public mNextStableId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;-><init>(Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;)V

    return-object v0
.end method

.method public obtainId()J
    .locals 4

    iget-wide v0, p0, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-wide v0
.end method
