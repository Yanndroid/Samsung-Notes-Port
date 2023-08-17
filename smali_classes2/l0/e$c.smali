.class public Ll0/e$c;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll0/e;->collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ll0/e$d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll0/e;


# direct methods
.method public constructor <init>(Ll0/e;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Ll0/e$c;->a:Ll0/e;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ll0/e$d;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lq0/b;->b(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Ll0/e$c;->a(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
