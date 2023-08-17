.class public interface abstract Lio/netty/util/UncheckedBooleanSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/BooleanSupplier;


# static fields
.field public static final FALSE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

.field public static final TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/UncheckedBooleanSupplier$1;

    invoke-direct {v0}, Lio/netty/util/UncheckedBooleanSupplier$1;-><init>()V

    sput-object v0, Lio/netty/util/UncheckedBooleanSupplier;->FALSE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    new-instance v0, Lio/netty/util/UncheckedBooleanSupplier$2;

    invoke-direct {v0}, Lio/netty/util/UncheckedBooleanSupplier$2;-><init>()V

    sput-object v0, Lio/netty/util/UncheckedBooleanSupplier;->TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    return-void
.end method


# virtual methods
.method public abstract get()Z
.end method
