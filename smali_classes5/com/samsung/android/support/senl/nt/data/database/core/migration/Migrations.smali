.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_CLEAR_APP_VERSION:I = 0x5

.field public static final DB_CURRENT_VERSION:I = 0x38

.field public static final MIGRATIONS:[Landroidx/room/migration/Migration;

.field public static final NEED_TO_BE_CLEARED_DATA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final RECOMMENDED_APP_VERSION:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->NEED_TO_BE_CLEARED_DATA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x26

    new-array v0, v0, [Landroidx/room/migration/Migration;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion19;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion19;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion20;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion20;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion21;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion21;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion22;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion22;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion23;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion23;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion24;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion24;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion25;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion25;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion26;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion26;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion27;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion27;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion28;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion28;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion29;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion29;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion30;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion30;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion31;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion31;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion32;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion32;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion33;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion33;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion34;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion34;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion35;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion35;-><init>()V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion36;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion36;-><init>()V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion37;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion37;-><init>()V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion38;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion38;-><init>()V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion39;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion39;-><init>()V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion40;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion40;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion41;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/AlterDBtoVersion41;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_42_To_43;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_42_To_43;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_43_To_44;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_43_To_44;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_44_To_45;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_44_To_45;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_45_To_46;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_45_To_46;-><init>()V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_46_To_47;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_46_To_47;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_47_To_48;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_47_To_48;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_48_To_49;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_48_To_49;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_49_To_50;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_49_To_50;-><init>()V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_50_To_51;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_50_To_51;-><init>()V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_51_To_52;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_51_To_52;-><init>()V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_52_To_53;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_52_To_53;-><init>()V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_53_To_54;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_53_To_54;-><init>()V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_54_To_55;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_54_To_55;-><init>()V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_55_To_56;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_55_To_56;-><init>()V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->MIGRATIONS:[Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
