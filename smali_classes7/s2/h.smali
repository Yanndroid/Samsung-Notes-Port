.class public final synthetic Ls2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Ls2/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ls2/h;

    invoke-direct {v0}, Ls2/h;-><init>()V

    sput-object v0, Ls2/h;->a:Ls2/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ld1/h;

    invoke-static {p1}, Ls2/i;->a(Ld1/h;)Z

    move-result p1

    return p1
.end method
