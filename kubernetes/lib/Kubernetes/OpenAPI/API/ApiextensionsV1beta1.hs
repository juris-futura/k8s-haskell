{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.16
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.ApiextensionsV1beta1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.ApiextensionsV1beta1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** ApiextensionsV1beta1

-- *** createCustomResourceDefinition

-- | @POST \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions@
-- 
-- create a CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createCustomResourceDefinition 
  :: (Consumes CreateCustomResourceDefinition contentType, MimeRender contentType V1beta1CustomResourceDefinition)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1beta1CustomResourceDefinition -- ^ "body"
  -> KubernetesRequest CreateCustomResourceDefinition contentType V1beta1CustomResourceDefinition accept
createCustomResourceDefinition _  _ body =
  _mkRequest "POST" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateCustomResourceDefinition 
instance HasBodyParam CreateCustomResourceDefinition V1beta1CustomResourceDefinition 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateCustomResourceDefinition DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateCustomResourceDefinition FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes CreateCustomResourceDefinition mtype

-- | @application/json@
instance Produces CreateCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateCustomResourceDefinition MimeYaml


-- *** deleteCollectionCustomResourceDefinition

-- | @DELETE \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions@
-- 
-- delete collection of CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionCustomResourceDefinition 
  :: (Consumes DeleteCollectionCustomResourceDefinition contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionCustomResourceDefinition contentType V1Status accept
deleteCollectionCustomResourceDefinition _  _ =
  _mkRequest "DELETE" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionCustomResourceDefinition 
instance HasBodyParam DeleteCollectionCustomResourceDefinition V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteCollectionCustomResourceDefinition DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam DeleteCollectionCustomResourceDefinition TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionCustomResourceDefinition mtype

-- | @application/json@
instance Produces DeleteCollectionCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCollectionCustomResourceDefinition MimeYaml


-- *** deleteCustomResourceDefinition

-- | @DELETE \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}@
-- 
-- delete a CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCustomResourceDefinition 
  :: (Consumes DeleteCustomResourceDefinition contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest DeleteCustomResourceDefinition contentType V1Status accept
deleteCustomResourceDefinition _  _ (Name name) =
  _mkRequest "DELETE" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCustomResourceDefinition 
instance HasBodyParam DeleteCustomResourceDefinition V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteCustomResourceDefinition DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteCustomResourceDefinition GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteCustomResourceDefinition OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteCustomResourceDefinition PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes DeleteCustomResourceDefinition mtype

-- | @application/json@
instance Produces DeleteCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCustomResourceDefinition MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/apiextensions.k8s.io\/v1beta1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/apiextensions.k8s.io/v1beta1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml


-- *** listCustomResourceDefinition

-- | @GET \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions@
-- 
-- list or watch objects of kind CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listCustomResourceDefinition 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListCustomResourceDefinition MimeNoContent V1beta1CustomResourceDefinitionList accept
listCustomResourceDefinition  _ =
  _mkRequest "GET" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListCustomResourceDefinition  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "allowWatchBookmarks" - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored. If the feature gate WatchBookmarks is not enabled in apiserver, this field is ignored.  This field is beta.
instance HasOptionalParam ListCustomResourceDefinition AllowWatchBookmarks where
  applyOptionalParam req (AllowWatchBookmarks xs) =
    req `setQuery` toQuery ("allowWatchBookmarks", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListCustomResourceDefinition Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListCustomResourceDefinition FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListCustomResourceDefinition LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListCustomResourceDefinition Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListCustomResourceDefinition ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListCustomResourceDefinition TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListCustomResourceDefinition Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListCustomResourceDefinition MimeJSON
-- | @application/json;stream=watch@
instance Produces ListCustomResourceDefinition MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListCustomResourceDefinition MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListCustomResourceDefinition MimeYaml


-- *** patchCustomResourceDefinition

-- | @PATCH \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}@
-- 
-- partially update the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchCustomResourceDefinition 
  :: (Consumes PatchCustomResourceDefinition contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest PatchCustomResourceDefinition contentType V1beta1CustomResourceDefinition accept
patchCustomResourceDefinition _  _ body (Name name) =
  _mkRequest "PATCH" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchCustomResourceDefinition 
instance HasBodyParam PatchCustomResourceDefinition Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchCustomResourceDefinition DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
instance HasOptionalParam PatchCustomResourceDefinition FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "force" - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
instance HasOptionalParam PatchCustomResourceDefinition Force where
  applyOptionalParam req (Force xs) =
    req `setQuery` toQuery ("force", Just xs)

-- | @application/apply-patch+yaml@
instance Consumes PatchCustomResourceDefinition MimeApplyPatchyaml
-- | @application/json-patch+json@
instance Consumes PatchCustomResourceDefinition MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchCustomResourceDefinition MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchCustomResourceDefinition MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchCustomResourceDefinition MimeYaml


-- *** patchCustomResourceDefinitionStatus

-- | @PATCH \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}\/status@
-- 
-- partially update status of the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchCustomResourceDefinitionStatus 
  :: (Consumes PatchCustomResourceDefinitionStatus contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest PatchCustomResourceDefinitionStatus contentType V1beta1CustomResourceDefinition accept
patchCustomResourceDefinitionStatus _  _ body (Name name) =
  _mkRequest "PATCH" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchCustomResourceDefinitionStatus 
instance HasBodyParam PatchCustomResourceDefinitionStatus Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchCustomResourceDefinitionStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchCustomResourceDefinitionStatus DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
instance HasOptionalParam PatchCustomResourceDefinitionStatus FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "force" - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
instance HasOptionalParam PatchCustomResourceDefinitionStatus Force where
  applyOptionalParam req (Force xs) =
    req `setQuery` toQuery ("force", Just xs)

-- | @application/apply-patch+yaml@
instance Consumes PatchCustomResourceDefinitionStatus MimeApplyPatchyaml
-- | @application/json-patch+json@
instance Consumes PatchCustomResourceDefinitionStatus MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchCustomResourceDefinitionStatus MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchCustomResourceDefinitionStatus MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchCustomResourceDefinitionStatus MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchCustomResourceDefinitionStatus MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchCustomResourceDefinitionStatus MimeYaml


-- *** readCustomResourceDefinition

-- | @GET \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}@
-- 
-- read the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readCustomResourceDefinition 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest ReadCustomResourceDefinition MimeNoContent V1beta1CustomResourceDefinition accept
readCustomResourceDefinition  _ (Name name) =
  _mkRequest "GET" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadCustomResourceDefinition  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'. Deprecated. Planned for removal in 1.18.
instance HasOptionalParam ReadCustomResourceDefinition Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify. Deprecated. Planned for removal in 1.18.
instance HasOptionalParam ReadCustomResourceDefinition Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)
-- | @application/json@
instance Produces ReadCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadCustomResourceDefinition MimeYaml


-- *** readCustomResourceDefinitionStatus

-- | @GET \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}\/status@
-- 
-- read status of the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readCustomResourceDefinitionStatus 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest ReadCustomResourceDefinitionStatus MimeNoContent V1beta1CustomResourceDefinition accept
readCustomResourceDefinitionStatus  _ (Name name) =
  _mkRequest "GET" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadCustomResourceDefinitionStatus  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadCustomResourceDefinitionStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)
-- | @application/json@
instance Produces ReadCustomResourceDefinitionStatus MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadCustomResourceDefinitionStatus MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadCustomResourceDefinitionStatus MimeYaml


-- *** replaceCustomResourceDefinition

-- | @PUT \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}@
-- 
-- replace the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceCustomResourceDefinition 
  :: (Consumes ReplaceCustomResourceDefinition contentType, MimeRender contentType V1beta1CustomResourceDefinition)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1beta1CustomResourceDefinition -- ^ "body"
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest ReplaceCustomResourceDefinition contentType V1beta1CustomResourceDefinition accept
replaceCustomResourceDefinition _  _ body (Name name) =
  _mkRequest "PUT" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceCustomResourceDefinition 
instance HasBodyParam ReplaceCustomResourceDefinition V1beta1CustomResourceDefinition 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceCustomResourceDefinition Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplaceCustomResourceDefinition DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam ReplaceCustomResourceDefinition FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes ReplaceCustomResourceDefinition mtype

-- | @application/json@
instance Produces ReplaceCustomResourceDefinition MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceCustomResourceDefinition MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplaceCustomResourceDefinition MimeYaml


-- *** replaceCustomResourceDefinitionStatus

-- | @PUT \/apis\/apiextensions.k8s.io\/v1beta1\/customresourcedefinitions\/{name}\/status@
-- 
-- replace status of the specified CustomResourceDefinition
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceCustomResourceDefinitionStatus 
  :: (Consumes ReplaceCustomResourceDefinitionStatus contentType, MimeRender contentType V1beta1CustomResourceDefinition)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1beta1CustomResourceDefinition -- ^ "body"
  -> Name -- ^ "name" -  name of the CustomResourceDefinition
  -> KubernetesRequest ReplaceCustomResourceDefinitionStatus contentType V1beta1CustomResourceDefinition accept
replaceCustomResourceDefinitionStatus _  _ body (Name name) =
  _mkRequest "PUT" ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceCustomResourceDefinitionStatus 
instance HasBodyParam ReplaceCustomResourceDefinitionStatus V1beta1CustomResourceDefinition 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceCustomResourceDefinitionStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplaceCustomResourceDefinitionStatus DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam ReplaceCustomResourceDefinitionStatus FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes ReplaceCustomResourceDefinitionStatus mtype

-- | @application/json@
instance Produces ReplaceCustomResourceDefinitionStatus MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceCustomResourceDefinitionStatus MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplaceCustomResourceDefinitionStatus MimeYaml

