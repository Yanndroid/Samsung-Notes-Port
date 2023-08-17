.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public categoryUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field

.field public time:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "serverTimestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    return-void
.end method
