.class Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterObject"
.end annotation


# instance fields
.field public final mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

.field public final mNotesUUIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->getNotesUUIDPreference()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mNotesUUIDList:Ljava/util/ArrayList;

    return-void
.end method
