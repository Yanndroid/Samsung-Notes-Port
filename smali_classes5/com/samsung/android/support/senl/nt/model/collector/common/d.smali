.class public final synthetic Lcom/samsung/android/support/senl/nt/model/collector/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/nt/model/collector/common/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/d;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/d;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/d;->a:Lcom/samsung/android/support/senl/nt/model/collector/common/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
