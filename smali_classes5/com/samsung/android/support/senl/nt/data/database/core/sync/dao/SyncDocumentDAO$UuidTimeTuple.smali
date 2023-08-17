.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UuidTimeTuple"
.end annotation


# instance fields
.field public categoryServerTimestamp:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "categoryserverTimestamp"
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
