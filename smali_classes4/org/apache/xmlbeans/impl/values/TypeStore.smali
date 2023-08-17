.class public interface abstract Lorg/apache/xmlbeans/impl/values/TypeStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/NamespaceManager;


# static fields
.field public static final FIXED:I = 0x4

.field public static final HASDEFAULT:I = 0x2

.field public static final NILLABLE:I = 0x1

.field public static final WS_COLLAPSE:I = 0x3

.field public static final WS_PRESERVE:I = 0x1

.field public static final WS_REPLACE:I = 0x2

.field public static final WS_UNSPECIFIED:I


# virtual methods
.method public abstract add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract array_setter([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract compute_default_text()Ljava/lang/String;
.end method

.method public abstract compute_flags()I
.end method

.method public abstract copy(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I
.end method

.method public abstract count_elements(Lorg/apache/xmlbeans/QNameSet;)I
.end method

.method public abstract exec_query(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract fetch_text(I)Ljava/lang/String;
.end method

.method public abstract find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V
.end method

.method public abstract find_all_element_users(Lorg/apache/xmlbeans/QNameSet;Ljava/util/List;)V
.end method

.method public abstract find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract find_nil()Z
.end method

.method public abstract get_locale()Lorg/apache/xmlbeans/impl/common/XmlLocale;
.end method

.method public abstract get_root_object()Ljava/lang/Object;
.end method

.method public abstract get_schema_field()Lorg/apache/xmlbeans/SchemaField;
.end method

.method public abstract get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;
.end method

.method public abstract get_xsi_type()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract insert_element_user(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract invalidate_nil()V
.end method

.method public abstract invalidate_text()V
.end method

.method public abstract is_attribute()Z
.end method

.method public abstract new_cursor()Lorg/apache/xmlbeans/XmlCursor;
.end method

.method public abstract remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V
.end method

.method public abstract remove_element(Lorg/apache/xmlbeans/QNameSet;I)V
.end method

.method public abstract store_text(Ljava/lang/String;)V
.end method

.method public abstract substitute(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract validate(Lorg/apache/xmlbeans/impl/common/ValidatorListener;)V
.end method

.method public abstract validate_on_set()Z
.end method

.method public abstract visit_elements(Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;)V
.end method
