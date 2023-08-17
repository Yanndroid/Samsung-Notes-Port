.class public Ly2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ly2/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ly2/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;
    .locals 1

    sget-object v0, Ly2/a;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-object v0
.end method

.method public static c()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;
    .locals 1

    sget-object v0, Ly2/a;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    return-object v0
.end method

.method public static d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly2/a;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Ly2/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Ly2/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static g(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
    .locals 0

    sput-object p0, Ly2/a;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-void
.end method

.method public static h(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 0

    sput-object p0, Ly2/a;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Ly2/a;->c:Ljava/lang/String;

    return-void
.end method
