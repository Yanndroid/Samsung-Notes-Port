.class public abstract Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final newVersion:I

.field private final oldVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;->oldVersion:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;->newVersion:I

    return-void
.end method


# virtual methods
.method public getNewVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;->newVersion:I

    return v0
.end method

.method public getOldVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;->oldVersion:I

    return v0
.end method

.method public abstract onUpgrade()V
.end method
